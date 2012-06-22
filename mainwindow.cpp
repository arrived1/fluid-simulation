#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(int width, int height, QWidget *parent)
    : QMainWindow(parent),
    ui(new Ui::MainWindow),
    arena(new Arena(width - 150, height - 50)),
    milisec(20)
{
    ui->setupUi(this);

    connect(ui->startButton, SIGNAL(clicked()), this, SLOT(ON_pushButtonStart()));
    connect(ui->stopButton, SIGNAL(clicked()), this, SLOT(ON_pushButtonStop()));

    ui->gridLayout_2->addWidget(arena, 0, 1, 1, 1);
    ui->grubBoxButtons->setFixedSize(100, 300);
    arena->setFixedSize(width - 150, height - 50);

    timer = new QTimer(this);
    timer->setInterval(milisec);
    connect(timer, SIGNAL(timeout()), arena, SLOT(run()));
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::ON_pushButtonStart()
{
    timer->start();
    ui->startButton->setDisabled(true);
    ui->stopButton->setEnabled(true);
    ui->actionStart->setEnabled(false);
    ui->actionStop->setEnabled(true);

}

void MainWindow::ON_pushButtonStop()
{
    timer->stop();
    ui->stopButton->setDisabled(true);
    ui->startButton->setEnabled(true);
    ui->actionStart->setEnabled(true);
    ui->actionStop->setEnabled(false);
}
