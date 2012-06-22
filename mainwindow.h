#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QTimer>

#include "arena.h"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT
    
public:
    explicit MainWindow(int width, int height, QWidget *parent = 0);
    ~MainWindow();
    
public slots:
    void ON_pushButtonStart();
    void ON_pushButtonStop();

private:
    Ui::MainWindow* ui;
    QTimer* timer;
    Arena* arena;
    int milisec;
};

#endif // MAINWINDOW_H
