#!/bin/bash

PROJECT=$1
if [ -z "$PROJECT" ]
then
    PROJECT="my_project"
fi

composer create-project symfony/website-skeleton ${PROJECT}
