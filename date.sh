#!/usr/bin/env bash
echo "Enter number of days"
read n_days
secs=$n_days*24*60*6
date --date='@'$((secs))
