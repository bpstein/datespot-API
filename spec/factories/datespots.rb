FactoryBot.define do
  factory :datespot do
    name 'Sexy Bar'
    short_description 'A nice place to take a sexy date.'
    long_description 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam deserunt illum labore harum veniam aut blanditiis beatae quae nobis! Ex, at expedita error sed rerum sunt optio, porro aspernatur beatae!'
    website 'sexybar.com'
    price_range 5
    location 'Soho'
    start_date '04 Apr 2019'
    end_date '04 Apr 2021'
    mon_open '09:00'
    mon_close '22:00'
    tue_open '09:00'
    tue_close '22:00'
    wed_open '09:00'
    wed_close '23:00'
    thu_open '09:00'
    thu_close '23:30'
    fri_open '08:00'
    fri_close '23:30'
    sat_open '08:00'
    sat_close '00:00'
    sun_open '11:00'
    sun_close '21:00'
  end
end
