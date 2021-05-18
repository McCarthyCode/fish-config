function dless --description "Decrypt and pipe to less"
  gpg -o - -d $argv | less
end

