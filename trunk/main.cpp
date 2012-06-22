#include <QtGui/QApplication>
#include <time.h>
#include "mainwindow.h"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    const int width = 500;
    const int height = 400;

    MainWindow w(width, height);
    w.setFixedSize(width, height);
    w.show();

    qsrand(time(0));
    return a.exec();
}
