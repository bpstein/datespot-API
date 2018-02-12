require 'rails_helper'
Devise::Test::ControllerHelpers

RSpec.describe Admin::AdminUsersController, type: :controller do 

  render_views 
  let(:admin_user) { FactoryBot.create :admin_user }

  before(:each) do 
    DatabaseCleaner.clean 
    sign_in admin_user
  end

  describe "#edit" do
    it 'renders the user form' do
      get :edit, params: { id: 1 }
      expect(assigns(:admin_user)).to eq admin_user
    end
  end

  describe '#update' do 
    it 'updates the user' do 
      patch :update, params: { id: 1, admin_user: { email: 'nimda@example.com' } }
      admin_user.reload 
      expect(admin_user.email).to eq 'nimda@example.com'
    end
  end

end

