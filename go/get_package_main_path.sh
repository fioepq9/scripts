#!/bin/bash

go list -f '{{ if eq .Name "main" }}{{ .Dir }}{{ end }}' ./...

