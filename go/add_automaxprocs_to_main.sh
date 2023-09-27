
#!/bin/bash
set -euxo pipefail

go list -f '{{ if eq .Name "main" }}{{ .Dir }}{{ end }}' ./... | xargs -I {} sed -i '/^import ($/a\\t_ "go.uber.org/automaxprocs"' "{}/main.go"
