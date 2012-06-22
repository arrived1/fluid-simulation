#include <cmath>
#include "physics.h"
#include <QDebug>

#define SWAP(x0, x) {float *tmp = x0; x0 = x; x = tmp;}

physics::physics()
{
}

int physics::idx(int x, int y)
{
    return x + (pow(particles.size(), 0.5) + 2) * y;
}

void physics::add_source(int N, float* x, float* s, float dt)
{
//    int size = N * N;
    for(int i = 0; i < N; i++)
        x[i] += dt * s[i];
}

void physics::diffuse(int N, int b, float* x, float* x0, float diff, float dt)
{
    float a  = dt * diff * N * N;
    int NN = pow(N, 0.5);

    for(int k = 0; k < 20; k++)
    {
        for(int i = 1; i <= NN; ++i)
            for(int j = 1; j <= NN; ++j)
            {
                x[idx(i, j)] = (x0[idx(i, j)] + a *
                   (x[idx(i - 1, j)] +
                    x[idx(i + 1, j)] +
                    x[idx(i, j - 1)] +
                    x[idx(i, j + 1)]));
            }

        set_bnd(N, b, x);
    }
}

void physics::set_bnd(int N, int b, float* x)
{
//    for(int i = 1; i <= N; i++)
//    {
//        x[idx(0, i)]     = (b == 1 ? -x[idx(1, i)] : x[idx(1, i)]);
//        x[idx(N + 1, i)] = (b == 1 ? -x[idx(N, i)] : x[idx(N, i)]);
//        x[idx(0, 0)]     = (b == 2 ? -x[idx(i, 1)] : x[idx(i, 1)]);
//        x[idx(i, N + 1)] = (b == 2 ? -x[idx(i, N)] : x[idx(i, N)]);
//    }

//    x[idx(0, 0)]         = (b == 0.5 ? -x[idx(1, 0)]     : x[idx(0, 1)]);
//    x[idx(0, N + 1)]     = (b == 0.5 ? -x[idx(1, N + 1)] : x[idx(0, N)]);
//    x[idx(N + 1, 0)]     = (b == 0.5 ? -x[idx(N, 0)]     : x[idx(N + 1, 1)]);
//    x[idx(N + 1, N +1 )] = (b == 0.5 ? -x[idx(N, N + 1)] : x[idx(N + 1, N)]);
}

void physics::advect(int N, int b, float* d, float* d0, float* u, float* v, float dt)
{
    float dt0 = dt *  N;
    int NN = pow(N, 0.5);

    for(int i = 1; i <= NN; i++)
        for(int j = 1; j <= NN; j++)
        {
            float x = i - dt0 * u[idx(i, j)];
            float y = j - dt0 * v[idx(i, j)];

            if(x < 0.5)
                x = 0.5;
            if(x > N + 0.5)
                x = N + 0.5;

            int i0 = (int)x;
            int i1 = i0 + 1;

            if(y < 0.5)
                y = 0.5;
            if(y > N + 0.5)
                y = N + 0.5;

            int j0 = (int)y;
            int j1 = j0 + 1;

            float s1 = x - i0;
            float s0 = 1 - s1;
            float t1 = y - j0;
            float t0 = 1 - t1;

            d[idx(i, j)] = s0 * (t0 * d0[idx(i0, j0)] + t1 * d0[idx(i0, j1)]) +
                    s1 * (t0 * d0[idx(i1, j0)] + t1 * d0[idx(i1, j1)]);
        }
    set_bnd(N, b, d);
}

void physics::dens_step(int N, float* x, float* x0, float* u, float* v, float diff,  float dt)
{
    add_source(N, x, x0, dt);
    SWAP(x0, x);
    diffuse(N, 0, x, x0, diff, dt);
    SWAP(x0, x);
    advect(N, 0, x, x0, u, v, dt);
}

void physics::vel_step(int N, float* u, float* v, float* u0, float* v0, float visc, float dt)
{
    add_source(N, u, u0, dt);
    add_source(N, v, v0, dt);
    SWAP(u0, u);
    diffuse(N, 1, u, u0, visc, dt);
    SWAP(v0, v);
    diffuse(N, 2, v, v0, visc, dt);
    project(N, u, v, u0, v0);
    SWAP(u0, u);
    SWAP(v0, v);
    advect(N, 1, u, u0, u0, v0, dt); //???????
    advect(N, 2, v, v0, u0, v0, dt);
    project(N, u, v, u0, v0);

}

void physics::project(int N, float* u, float* v, float* p, float* div)
{
    float h = 1.0 / N;
    int NN = pow(N, 0.5);

    for(int i = 1; i <= NN; i++)
        for(int j = 1; j <= NN; j++)
        {
            div[idx(i, j)] = (div[idx(i, j)] + p[idx(i - 1, j)] + p[idx(i + 1, j)]
                              + p[idx(i, j - 1)] + p[idx(i, j + 1)]) / 4;
        }

    set_bnd(N, 0, div);
    set_bnd(N, 0, p);

    for(int k = 0; k < 20; k++)
    {
        for(int i = 1; i <= NN; i++)
            for(int j = 1; j <= NN; j++)
                p[idx(i, j)] = (div[idx(i, j)] + p[idx(i + 1, j)]
                                + p[idx(i, j - 1)] + p[idx(i, j + 1)]) / 4;

        set_bnd(N, 0, p);
    }

    for(int i = 1; i <= NN; i++)
        for(int j = 1; j <= NN; j++)
        {
            u[idx(i, j)] -= 0.5 * (p[idx(i + 1, j)] - p[idx(i - 1, j)]) / h;
            v[idx(i, j)] -= 0.5 * (p[idx(i, j + 1)] - p[idx(i, j - 1)]) / h;
        }

    set_bnd(N, 1, u);
    set_bnd(N, 2, v);
}

