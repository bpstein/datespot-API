require 'rails_helper'

RSpec.describe Datespot, type: :model do
  
  let(:category) { create :category }
  let(:datespot) { create :datespot }

  it { should validate_presence_of(:category)}
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:short_description) }
  it { should validate_presence_of(:location) }
  it { should validate_presence_of(:price_range) }

  before(:each) do 
    DatabaseCleaner.clean
    create :category
  end

  # it 'creates a datespot with valid input' do 
  #   create :category 
  #   expect { create :datespot }.to change { Datespot.count }.by(1)
  # end
end
