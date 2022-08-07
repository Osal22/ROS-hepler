#include "controll.h"
#include <stdio.h>
#include <stdlib.h>

Controll::Controll(QObject *parent) : QObject(parent)
{

}

void Controll::build()
{
    system("/bin/bash -c /home/huzaifa/catkin_ws/src/rinterface/make.sh");

}

void Controll::run_p()
{
    system("/bin/bash -c /home/huzaifa/catkin_ws/src/rinterface/run_make.sh");
}

