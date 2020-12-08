function sync-functions \
--description "Upload all user-defined functions to remote servers"
  set servers skkeganlandscapes.com coolwatercreations.com \
              outatwrigley.com mtmchicago.com \
              staging.mccarthycode.com mccarthycode.com

  for server in $servers
    echo "rsync -adv ~/.config/fish/functions/ $USER@$server:~/.config/fish/functions" >&2
    rsync -adv ~/.config/fish/functions/ $USER@$server:~/.config/fish/functions
  end

  return 0
end

