#! /bin/bash
# https://docs.aws.amazon.com/lambda/latest/dg/python-package.html
cd lambda

rm -r package

pip3  install --target ./package ics jsonpickle

cd package

zip -r ../spaces2ical-package.zip .

cd ..

zip ./spaces2ical-package.zip spaces2ical.py
