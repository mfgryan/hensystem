#!/bin/bash

ls -l | awk '{print $9, "\t", $3}'
