require 'rails_helper'
require 'database_cleaner'

feature "Guests cannot access dashboard" do 
  context 'Guests cannot create projects' do
    it "does not allow guest access" do 
      visit('/admin')
      expect(page).to_not have_link 'New Post'
    end
  end
end

feature "User can access the admin dashboard" do 
  let(:admin_user) {FactoryGirl.create :admin_user}

  context "User can view the admin dashboard " do 
    before do 
      admin_user = FactoryGirl.create :admin_user
      sign_in_admin
    end

    it 'renders without fail' do 
      visit '/admin/admin_users'
      expect(page).to have_content('Dashboard')
      expect(page).to have_content('admin@example.com')
    end

    it "should display a list of admin users" do 
      visit('/admin/admin_users')
      expect(page).to have_content('Admin Users')
      expect(page).to have_content('admin@example.com')
    end
  end

  context "User can add valid projects and tasks via dashboard" do 
    before do
      admin_user = FactoryGirl.create :admin_user
      sign_in_admin
    end
  end
end