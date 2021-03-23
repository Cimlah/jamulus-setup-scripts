#! /bin/bash

kill -15 $(pgrep Jamulus)

export pgrep_exit_code=$?