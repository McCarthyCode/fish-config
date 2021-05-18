function encrypt --description "Encrypt a file"
  gpg --encrypt --sign --armor -r matt@mccarthycode.com $argv
end

