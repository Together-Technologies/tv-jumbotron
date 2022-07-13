#!/bin/bash
pd rTest.pd &
sleep 1
pd -send "totalXYInches 16 12" -send "offsetXYInches 4 3 1" -send "sizeXYInches 4 3 1" -send "vidXYDim 640 480" jumboControl1.pd
