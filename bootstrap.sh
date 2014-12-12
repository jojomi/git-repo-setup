#!/usr/bin/env sh

DIR=${1:-$(mktemp -d /tmp/git-repo-setup-bootstrap-XXXXX)}
git archive HEAD | tar -x -C "$DIR"
echo $DIR
