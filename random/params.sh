#!/bin/bash
: '
	Simple Way showing how arguments are in shellscripts
  '
echo "THERE ARE $# PARAMS"
echo "THE PARAMS ARE $@"
echo "THE SCRIPT NAME IS $0"
echo "The second Param is $2"
exit
