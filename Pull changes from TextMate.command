#!/usr/bin/env bash -l
ThisPackage="$(cd "$(dirname "$0")";pwd)"
AtomRoot="$HOME/.atom"
rm -rf "$TMPDIR/language-javascript-jsx"
apm init --convert "$HOME/Library/Application Support/Avian/Bundles/JavaScript with JSX.tmbundle" --package "$TMPDIR/language-javascript-jsx"
opendiff "$TMPDIR/language-javascript-jsx" "$ThisPackage" -merge "$ThisPackage"
