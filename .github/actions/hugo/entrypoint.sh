#!/usr/bin/env sh

git config --global --add safe.directory $GITHUB_WORKSPACE
cd $GITHUB_WORKSPACE

hugo
