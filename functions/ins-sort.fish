function ins-sort --description "Insert a string to a list and sort the resulting list"
  set -l string $argv[1]
  set -l file $argv[2]

  echo $string >> $file
  sort $file -o $file
  more $file

  return 0
end

