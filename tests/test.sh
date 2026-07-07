#!/bin/bash

pytest /tests/test_outputs.py -rA

if [ $? -eq 0 ]; then
  echo 1 > /verifier/reward.txt
else
  echo 0 > /verifier/reward.txt
fi