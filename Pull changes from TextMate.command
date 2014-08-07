#!/usr/bin/env bash -l
ThisPackage="$(cd "$(dirname "$0")";pwd)"
AtomRoot="$HOME/.atom"
apm init --convert "$HOME/Library/Application Support/Avian/Bundles/JavaScript with JSX.tmbundle" --package "$TMPDIR/language-javascript-jsx"
opendiff "$TMPDIR/language-javascript-jsx" "$ThisPackage" -merge "$ThisPackage"
rm -rf "$TMPDIR/language-javascript-jsx"
