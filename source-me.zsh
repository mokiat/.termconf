#!/bin/zsh

repo_dir="$(dirname $0:A)"

for module in $MODULES; do
  module_file="$repo_dir/modules/$module.zsh"
  if [ -f "$module_file" ]; then
    source "$module_file"
  else
    echo "warning: module \"$module\" skipped: unknown module"
  fi
done