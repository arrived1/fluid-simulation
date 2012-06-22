#include <QDebug>
#include "arena.h"

#include <boost/make_shared.hpp>

Arena::Arena(int width, int height, QWidget* parent)
    : QWidget(parent),
    width(width),
    height(height)
{
    u = new float[width * height];
    v = new float[width * height];
    uPrev = new float[width * height];
    vPrev = new float[width * height];
    dens = new float[width * height];
    densPrev = new float[width * height];

    int counter = 0;
    phys.reset(new physics());
    for(int x = 0; x < width; x++)
        for(int y = 0; y < width; y++)
        {
            particles.push_back(particle(x, y));
//            u.push_back(1);
//            v.push_back(1);
//            uPrev.push_back(0);
//            vPrev.push_back(0);
//            dens.push_back(1);
//            densPrev.push_back(0);
            u[counter] = 0.7;
            v[counter] = 0.4;
            uPrev[counter] = 0;
            vPrev[counter] = 0;
            dens[counter] = 0.7;
            densPrev[counter] = 0;
            counter++;
        }

    qDebug() << "particles: " << particles.size();
}

void Arena::paintEvent(QPaintEvent*)
{
    QPainter painter(this);
    painter.setPen(Qt::blue);
    painter.drawRect(0, 0, width-1, height-1);
    painter.setPen(Qt::NoPen);

    foreach(particle obj, particles)
    {
        painter.setBrush(obj.color);
        painter.drawEllipse(QPointF(obj.x, obj.y), 5, 5);
    }
}

void Arena::resizeEvent(QResizeEvent* event)
{
    width = event->size().width();
    height = event->size().height();
}

void Arena::singleStep()
{
    float visc = 0.7;
    float dt = 0.5;
    float diff = 0.7;
    qDebug() << particles.size();
    phys->vel_step(particles.size(), u, v, uPrev, vPrev, visc, dt);
//    phys->dens_step(particles.size(), dens, densPrev, u, v, diff, dt);
//    phys->vel_step(particles, visc, dt);
//    phys->dens_step(particles.size(), );
}

void Arena::run()
{
    static int step = 0;
    qDebug() << step++;
    singleStep();
    update();
}
