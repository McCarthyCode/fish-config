function decrypt --description "Decrypt a file"
  set -l path (echo $argv[1] | rev | cut -d/ -f2- | rev)
  set -l filename (basename $argv[1] .asc)
  
  set -l output
  if [ $path = "$filename.asc" ];
    set output $filename;
  else;
    set output $path/$filename;
  end
  
  gpg --decrypt $argv > $output
end

