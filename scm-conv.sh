

for f in $(find . -iname '*.scm'); do
  [ -f "$f" ] || continue
  file=$(basename "$f")
  dir=$(dirname "$f")

  name=${file%.*}
  ml_file=$dir/$name.ml
  [ -n "$1" ] && echo ml file $ml_file 
  scm2ml $f > $ml_file
done
