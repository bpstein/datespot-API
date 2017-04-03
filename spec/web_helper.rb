require 'database_cleaner'

def sign_in_admin(email = 'admin@example.com', password = 'password')
  reset_session!
  visit admin_root_path
  fill_in 'Email', :with => email
  fill_in 'Password', :with => password
  click_button 'Login'
end