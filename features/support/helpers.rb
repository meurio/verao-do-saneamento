def to_field string
  return "user_first_name" if string == "the first name field"
  return "user_last_name" if string == "the last name field"
  return "user_email" if string == "the email field"
  return "user_phone" if string == "the phone field"
  raise "I don't know what '#{string}' means"
end

def to_url string
  return root_path if string == "the homepage"
  return new_user_path if string == "the new user page"
  raise "I don't know what '#{string}' means"
end

def to_element string
  return "form.new_user" if string == "the support form"
  return ".taf" if string == "the tell a friend copy"
  return ".first_name_field small.error" if string == "an error in the first name field"
  return ".last_name_field small.error" if string == "an error in the last name field"
  return ".email_field small.error" if string == "an error in the email field"
  return ".phone_field small.error" if string == "an error in the phone field"
  raise "I don't know what '#{string}' means"
end
