function launch
  sudo fish -c 'echo "STAGE=production" > /etc/environment'
  sudo rm -f /etc/nginx/sites-enabled/staging
  sudo ln -fs /etc/nginx/sites-available/production /etc/nginx/sites-enabled
  sudo systemctl restart gunicorn
end

