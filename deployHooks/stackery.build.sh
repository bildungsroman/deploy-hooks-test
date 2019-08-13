#!/bin/sh

set -e
mkdir -p .aws-sam/build/src/

cp .stackery/template.yaml .aws-sam/build/template.yaml

( cd src/goFunc && GOBIN=$PWD GOPATH=$PWD make )

rm -rf .aws-sam/build/src/goFunc
cp -r src/goFunc .aws-sam/build/src/goFunc

( cd src/Function && GOBIN=$PWD GOPATH=$PWD make )

rm -rf .aws-sam/build/src/Function
cp -r src/Function .aws-sam/build/src/Function
