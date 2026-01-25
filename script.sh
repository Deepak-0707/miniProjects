#!/bin/bash
echo "Printing the current user"
whoami
echo "Printing the current user directory"
pwd
echo "Printing the available disks and their used and free spaces"
df -h
echo "Printing the processes"
ps
echo "Printing the current running processes"
ps -a
echo "Starting an random safe process"
sleep 300 &
pid=$!
echo "Printing the processes"
ps
echo "Printing the current running processes"
ps -a
echo "Killing the random safe process"
kill "$pid"
echo "Printing the processes"
ps
echo "Printing the current running processes"
ps -a  