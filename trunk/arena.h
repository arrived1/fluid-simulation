#ifndef ARENA_H
#define ARENA_H

#include <QWidget>
#include <QPainter>
#include <QResizeEvent>
#include <QVector>
#include <boost/shared_ptr.hpp>
#include "particle.h"
#include "physics.h"

class Arena : public QWidget
{
    Q_OBJECT;
public:
    Arena(int width, int height, QWidget* parent = 0);
    void paintEvent(QPaintEvent* event);
    void resizeEvent(QResizeEvent* event);

public slots:
    void run();

private:
    void singleStep();


    QVector<particle> particles;
//    QVector<float> u;
//    QVector<float> v;
//    QVector<float> uPrev;
//    QVector<float> vPrev;
//    QVector<float> dens;
//    QVector<float> densPrev;
    float* u;
    float* v;
    float* uPrev;
    float* vPrev;
    float* dens;
    float* densPrev;
    boost::shared_ptr<physics> phys;
    int width;
    int height;

};

#endif // ARENA_H
