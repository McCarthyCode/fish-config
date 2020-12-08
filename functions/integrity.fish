function integrity
  echo -n "integrity=\"sha384-"
  openssl dgst -sha384 -binary $argv[1] | openssl base64 | tr "\n" '"'
  echo
end

