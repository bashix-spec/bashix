# A small shell script witih 4 different behaviors on 4 commonly used shells.

# from test/spec.sh builtin-meta -r 2

for sh in bash dash mksh zsh; do
  echo ---
  echo $sh
  echo

  $sh -c '
#### command -v with multiple names
command -v echo ZZZ for
echo status=$?
'
done
