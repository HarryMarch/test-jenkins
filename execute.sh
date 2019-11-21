#!/bin/bash
SRC=$(readlink -f $1)

$SRC/compile.sh $SRC