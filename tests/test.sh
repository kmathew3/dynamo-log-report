#!/bin/bash

pytest /tests/test_outputs.py -rA

if [ $? -eq 0 ]; then
    echo 1 > reward.txt
else
    echo 0 > reward.txt
fi