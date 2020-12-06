#!/usr/bin/env bash

if command -v pip &>/dev/null; then
	pip install Pygments
fi

if command -v pip3 &>/dev/null; then
	pip3 install Pygments
fi