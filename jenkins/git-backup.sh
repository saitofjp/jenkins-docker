#!/bin/sh
cd $JENKINS_HOME
git add --all && git commit -m "$BUILD_TAG"
git push master bakcup

