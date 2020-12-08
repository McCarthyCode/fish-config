function update-pip --description "Update pip, packages, and requirements.txt"
  if [ -e requirements.txt ]
    pip install -r requirements.txt -U pip

    if [ $status -ne 0 ]
      return 1
    end
    
    pip freeze | sed s/==/\>=/ > requirements.txt
  end

  return 0
end
