require 'rails_helper'

feature 'Guests cannot access dashboard' do
  context 'Guests cannot create datespots' do
    it 'does not allow guest access' do
      visit('/admin')
      expect(page).to_not have_link 'New Datespot'
    end
  end
end

feature 'User can access the admin dashboard' do
  let(:admin_user) { FactoryBot.create :admin_user }

  context 'User can view the admin dashboard ' do
    before do
      create :admin_user
      sign_in_admin
    end

    it 'renders without fail' do
      visit '/admin/admin_users'
      expect(page).to have_content('Dashboard')
      expect(page).to have_content('admin@example.com')
    end

    it 'should display a list of admin users' do
      visit('/admin/admin_users')
      expect(page).to have_content('Admin Users')
      expect(page).to have_content('admin@example.com')
    end
  end
end

feature 'User can add datespots' do
  let(:admin_user) { FactoryBot.create :admin_user }

  context 'User can add valid datespots and categories via dashboard' do
    before do
      create :admin_user
      sign_in_admin
    end

    it 'should allow an admin to add a category' do
      create_category
      expect(page).to have_content('Category was successfully created.')
    end

    it 'should not allow a blank datespot to be added' do
      visit '/admin/datespots/new'
      click_button('Create Datespot')
      expect(page).to have_content("can't be blank")
    end

    it 'should allow an admin to add a datespot' do
      create_category

      visit '/admin/datespots/new'

      fill_in 'Name', with: 'The Local'
      fill_in 'Short description', with: 'Not a bad joint'
      fill_in 'Location', with: 'South London'
      fill_in 'Website', with: 'www.local.co.uk'
      fill_in 'Price range', with: 3
      fill_in 'Quirkiness rating', with: 5

      select 'first date', from: "Category"
      select_date(Date.parse('2017-January-01'), from: 'datespot_start_date')
      select_date(Date.parse('2020-January-01'), from: 'datespot_end_date')

      click_button 'Create Datespot'
      expect(page).to have_content('Datespot was successfully created.')
      visit '/admin/datespots/1'
    end
  end
end
