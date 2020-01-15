

for f in $(find . -iname '*.ml'); do
  [ -f "$f" ] || continue

  echo delete $f
  rm -f $f
done

