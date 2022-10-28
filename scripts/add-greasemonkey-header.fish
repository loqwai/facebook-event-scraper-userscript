#!/usr/bin/env fish
function greasemonkey-header
  for src in (ls -1 dist/esbuild)
    cat ./greasemonkey-permissions/$src ./dist/esbuild/$src > ./dist/out/$src
  end
end

mkdir -p dist/out
mkdir -p dist/esbuild
greasemonkey-header



