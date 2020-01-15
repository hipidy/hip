

for d in native lib ; do
  [ -d "$d" ] || continue

  for f in $(find $d -iname '*.ml'); do
    [ -f "$f" ] || continue

    echo delete $f
    rm -f $f
  done

done

