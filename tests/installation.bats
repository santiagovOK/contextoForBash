#!/usr/bin/env bats

@test "Show help message" {
  run ./bin/contexto-bash --help
  [ "$status" -eq 0 ]
}

