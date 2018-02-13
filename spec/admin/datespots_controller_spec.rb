require 'rails_helper'
Devise::Test::ControllerHelpers

RSpec.describe Admin::DatespotsController, type: :controller do

  render_views
  let(:admin_user) { FactoryBot.create :admin_user }

  before(:each) do
    DatabaseCleaner.clean 
    sign_in admin_user 
  end

  describe '#index' do 
    it 'renders the index' do
      category = Category.create! name: 'just drinks'
      datespot = Datespot.create! name: 'Drinking Hole',
                                  short_description: 'Nice place by river', 
                                  long_description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse dolorum magnam cupiditate, molestias omnis harum optio, maiores alias error libero tempore non dolore itaque nobis quam ex similique quis vero?', 
                                  location: 'Greenwich', 
                                  price_range: 10,
                                  website: 'drinkinghole.com',
                                  start_date: '09 Apr 2017',
                                  end_date: '10 May 2017',
                                  category: category,
                                  mon_open: '09:00',
                                  mon_close: '23:00',
                                  tue_open: '09:00',
                                  tue_close: '23:00',
                                  wed_open: '09:00',
                                  wed_close: '23:00',
                                  thu_open: '08:00',
                                  thu_close: '23:30',
                                  fri_open: '08:00',
                                  fri_close: '23:30',
                                  sat_open: '10:00',
                                  sat_close: '23:30',
                                  sun_open: '11:00',
                                  sun_close: '22:00'
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe '#edit' do
    it 'renders datespot form' do 
      category = Category.create! name: 'just drinks'
      datespot = Datespot.create! name: 'Drinking Hole', 
                                  short_description: 'Nice place by river', 
                                  long_description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse dolorum magnam cupiditate, molestias omnis harum optio, maiores alias error libero tempore non dolore itaque nobis quam ex similique quis vero?', 
                                  location: 'Greenwich', 
                                  price_range: 10, 
                                  website: 'drinkinghole.com',
                                  start_date: '09 Apr 2017',
                                  end_date: '10 May 2017',
                                  category: category,
                                  mon_open: '09:00',
                                  mon_close: '23:00',
                                  tue_open: '09:00',
                                  tue_close: '23:00',
                                  wed_open: '09:00',
                                  wed_close: '23:00',
                                  thu_open: '08:00',
                                  thu_close: '23:30',
                                  fri_open: '08:00',
                                  fri_close: '23:30',
                                  sat_open: '10:00',
                                  sat_close: '23:30',
                                  sun_open: '11:00',
                                  sun_close: '22:00'
      get :edit, params: { id: 1 }
      expect(assigns(:datespot)).to eq datespot
    end
  end

  describe '#update' do 
    it 'updates a datespot and relevant info' do 
      category = Category.create! name: 'just drinks'
      @datespot = Datespot.create!  name: 'Hole in the Wall',
                                    short_description: 'Nondescript hole', 
                                    long_description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse dolorum magnam cupiditate, molestias omnis harum optio, maiores alias error libero tempore non dolore itaque nobis quam ex similique quis vero?', 
                                    location: 'Greenwich', 
                                    price_range: 10, 
                                    website: 'hole.com',
                                    start_date: '27 Sep 2017',
                                    end_date: '30 Dec 2018',
                                    category: category,
                                    mon_open: '09:00',
                                    mon_close: '23:00',
                                    tue_open: '09:00',
                                    tue_close: '23:00',
                                    wed_open: '09:00',
                                    wed_close: '23:00',
                                    thu_open: '08:00',
                                    thu_close: '23:30',
                                    fri_open: '08:00',
                                    fri_close: '23:30',
                                    sat_open: '10:00',
                                    sat_close: '23:30',
                                    sun_open: '11:00',
                                    sun_close: '22:00'
      patch :update, params: { id: @datespot,
        datespot: FactoryBot.attributes_for(
          :datespot, 
          name: 'New Joint',
          short_description: 'Dive Bar',
          long_description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni repudiandae distinctio quisquam tempora consectetur mollitia officia. Aliquam ratione, veritatis iste ea suscipit temporibus et est sit laborum accusantium, nihil sed.',
          location: 'Soho',
          price_range: 5,
          category: 'dirty dives'
      )}
      expect(assigns(:datespot).name).to eq 'New Joint'
      expect(assigns(:datespot).short_description).to eq 'Dive Bar'
      expect(assigns(:datespot).location).to eq 'Soho'
    end
  end
end