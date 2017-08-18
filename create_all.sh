#!/bin/bash
cd beginner
bash ../create_lessons.sh Beginner
cd ..
cd intermediate
bash ../create_lessons.sh Intermediate
cd ..
cd advanced
bash ../create_lessons.sh Advanced
cd ..
cd beyond
bash ../create_lessons.sh Beyond
cd ..
cd swift
bash ../create_lessons.sh Swift
cd ..
cd tablet
bash ../create_lessons.sh Tablet
cd ..
cd wro
bash ../create_lessons.sh Wro
cd ..
cd fll
bash ../create_lessons.sh FLL
cd ..
cd robots-lxf
bash ../create_robots.sh Robots
cd ..
bash create_master.sh

