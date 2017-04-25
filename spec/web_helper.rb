require 'database_cleaner'

def sign_in_admin(email = 'admin@example.com', password = 'password')
  reset_session!
  visit admin_root_path
  fill_in 'Email', :with => email
  fill_in 'Password', :with => password
  click_button 'Login'
end

def add_datespot
  fill_in('Name', with: 'The Local')
  fill_in('Short description', with: 'Not a bad joint')
  fill_in('Location', with: 'South London')
  fill_in('Website', with: 'www.local.co.uk')
  fill_in('Price range', with: 3)
  fill_in('Start date', with: '10 May 2018')
  fill_in('End date', with: '10 November 2020')
end




                                  # start_date: '09 Apr 2017',
                                  # end_date: '10 May 2017',
                                  # category: category,
                                  # mon_open: '09:00',
                                  # mon_close: '23:00',
                                  # tue_open: '09:00',
                                  # tue_close: '23:00',
                                  # wed_open: '09:00',
                                  # wed_close: '23:00',
                                  # thu_open: '08:00',
                                  # thu_close: '23:30',
                                  # fri_open: '08:00',
                                  # fri_close: '23:30',
                                  # sat_open: '10:00',
                                  # sat_close: '23:30',
                                  # sun_open: '11:00',
                                  # sun_close: '22:00'