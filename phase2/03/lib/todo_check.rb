def todo_check(text)
  if text.include?('#TODO')
    return true
  else
    return false 
  end
end
