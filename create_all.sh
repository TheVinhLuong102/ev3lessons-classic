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
bash create_master.sh

