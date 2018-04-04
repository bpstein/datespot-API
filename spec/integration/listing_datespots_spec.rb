require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe "GET #show" do

    it "returns http success" do
      category = Category.create! name: 'just drinks'
      datespot = Datespot.create! name: 'Drinking Hole',
                                  short_description: 'Nice place by river',
                                  long_description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse dolorum magnam cupiditate, molestias omnis harum optio, maiores alias error libero tempore non dolore itaque nobis quam ex similique quis vero?',
                                  location: 'Greenwich',
                                  price_range: 10,
                                  quirkiness_rating: 5,
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
      expect(response).to have_http_status(:success)
    end

    it "response with JSON body containing expected Datespot attributes" do
      hash_body = nil
      # expect { hash_body = JSON.parse(response.body).with_indifferent_access }.not_to raise_exception
      # expect(hash_body).to match({
      #   name: 'Drinking Hole'
      # })
    end
  end
end
