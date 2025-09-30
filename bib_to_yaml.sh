#!/usr/bin/env bash
pandoc me.bib -s -f biblatex -t markdown | sed '/---/d' > me.yaml
