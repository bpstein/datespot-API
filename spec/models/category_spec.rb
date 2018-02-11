require 'rails_helper' 

RSpec.describe Category, type: :model do

  before(:each) do 
    DatabaseCleaner.clean
    create :category
  end

  it { should validate_presence_of(:name) }

  it 'creates a category with valid input' do
    expect { create :category }.to change { Category.count }.by(1)
  end
end
  

