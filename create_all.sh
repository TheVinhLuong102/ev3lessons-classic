#!/bin/bash
cd beginner
bash ../create_lessons.sh beginner
cd ..
cd intermediate
bash ../create_lessons.sh intermediate
cd ..
cd advanced
bash ../create_lessons.sh advanced
cd ..
cd beyond
bash ../create_lessons.sh beyond
cd ..
bash create_master.sh

