require 'rails_helper'
Devise::Test::ControllerHelpers 

RSpec.describe Admin::DatespotsController, type: :controller do 

  render_views
  let(:admin_user) { FactoryGirl.create :admin_user }

  before(:each) do 
    DatabaseCleaner.clean 
    sign_in admin_user 
  end

  describe '#index' do 
    it 'renders the index' do 
      FactoryGirl.create :datespot 
      get :index 
      expect(response).to have_http_status(:success)
    end
  end

  describe '#edit' do 
    it 'renders datespot form' do 
      datespot = Datespot.create! name: 'Drinking Hole', short_description: 'Nice place by river', long_description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse dolorum magnam cupiditate, molestias omnis harum optio, maiores alias error libero tempore non dolore itaque nobis quam ex similique quis vero?', location: 'Greenwich', price_range: 10, category: 'just drinks'
      get :edit, params: { id: 1 }
      expect(assigns(:datespot)).to eq datespot
    end
  end

  describe '#update' do 
    it 'updates a datespot and relevant info' do 
      @datespot = Datespot.create! name: 'Hole in the Wall', short_description: 'Nondescript hole', long_description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse dolorum magnam cupiditate, molestias omnis harum optio, maiores alias error libero tempore non dolore itaque nobis quam ex similique quis vero?', location: 'Greenwich', price_range: 10, category: 'just drinks'
      patch :update, params: { id: @datespot,
        datespot: FactoryGirl.attributes_for(
          :datespot, 
          name: 'New Joint',
          short_description: 'Dive Bar',
          long_description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni repudiandae distinctio quisquam tempora consectetur mollitia officia. Aliquam ratione, veritatis iste ea suscipit temporibus et est sit laborum accusantium, nihil sed.',
          location: 'Soho',
          price_range: 5,
          category: 'dirty dives'
        )
      }
      expect(assigns(:datespot).name).to eq 'New Joint'
      expect(assigns(:datespot).short_description).to eq 'Dive Bar'
      expect(assigns(:datespot).location).to eq 'Soho'
    end
  end
end