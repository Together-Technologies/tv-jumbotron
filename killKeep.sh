#!/bin/bash
kill `ps aux | grep keep | head -n 1 | awk {'print $2;'}`
