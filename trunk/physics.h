#ifndef PHYSICS_H
#define PHYSICS_H

#include <QVector>
#include "particle.h"

class physics
{
public:
    physics();

    void dens_step(int N, float* x, float* x0, float* u, float* v, float diff, float dt);
    void vel_step(int N, float* u, float* v, float* u0, float* v0, float visc, float dt);


private:
    int idx(int x, int y);
    void add_source(int N, float* x, float* s, float dt);
    void diffuse(int N, int b, float* x, float* x0, float diff, float dt);
    void set_bnd(int N, int b, float* x);
    void advect(int N, int b, float* d, float* d0, float* u, float* v, float dt);
    void project(int N, float* u, float* v, float* p, float* div);

    QVector<particle> particles;
};

#endif // PHYSICS_H
