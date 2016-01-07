#!/bin/bash -e

entry="$(cat ./templates/pre_ref_bindings.js)"
binding="$(cat ./compiled/z3_bindings_built.js)"
exit="$(cat ./templates/post_ref_bindings.js)"

echo "$entry \n\n$binding \n$exit" > ./compiled/z3_bindings_ref.js