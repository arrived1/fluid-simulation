#ifndef PARTICLE_H
#define PARTICLE_H

#include <QColor>

struct particle
{
    particle(int x = 0, int y = 0, QColor color = QColor(92, 172, 238))
        : x(x), y(y), u(0), v(0), dens(0), uPrev(0), vPrev(0), densPrev(0), color(color)
    {}

    int x, y;
    int u, v, dens;
    int uPrev, vPrev, densPrev;
    QColor color;
};

#endif // PARTICLE_H
