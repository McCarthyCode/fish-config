function update-pip --description "Update pip, packages, and requirements.pip"
  set -l req "requirements.pip"
  
  if [ -e $req ]  
    pip install -r $req -U pip

    if [ $status -ne 0 ]
      return 1
    end
  end
  
  pip freeze | sed s/==/\>=/ > $req

  return 0
end
