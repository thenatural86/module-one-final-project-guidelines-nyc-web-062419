def default_response(choice)
  if !(1..6).include?(choice)
    choice = 6
  else
    choice
  end
end 