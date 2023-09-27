#!/bin/bash
set -euxo pipefail

go list -f '{{ if eq .Name "main" }}{{ .Dir }}{{ end }}' ./...

