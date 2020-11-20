#!/usr/bin/env bash
echo "Enter number of days"
read n_days
secs=$n_days*24*60*60
date --date='@'$((secs))
