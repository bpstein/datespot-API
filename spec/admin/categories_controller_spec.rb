require 'rails_helper'
Devise::Test::ControllerHelpers

RSpec.describe Admin::CategoriesController, type: :controller do 

  render_views

  let(:admin_user) { FactoryBot.create :admin_user }

  before(:each) do 
    DatabaseCleaner.clean 
    sign_in admin_user
  end

  describe '#index' do 
    it 'renders the index' do 
      sign_in admin_user
      FactoryBot.create :category 
      get :index 
      expect(response).to have_http_status(:success)
    end
  end
end