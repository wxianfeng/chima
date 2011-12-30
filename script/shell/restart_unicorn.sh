#!/bin/bash

pkill -9 unicorn
unicorn -E production -D -p 3001