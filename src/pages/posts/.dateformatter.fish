#!/bin/fish

if not string length -q $argv[1]
  return 1
end

sed -i "s/[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}T[0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\}/$(date -r $argv[1] +%Y-%m-%dT%H:%M:%S)/" $argv[1]
