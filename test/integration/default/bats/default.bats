#!/usr/bin/env bats
 
@test "Validate status code for mysql exporter" {
  run curl -s -o /dev/null -w "%{http_code}" localhost:9104/metrics
  [[ $output = "200" ]]
}