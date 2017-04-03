require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  
  let(:admin_user) { create :admin_user }

  before(:each) do 
    DatabaseCleaner.clean 
  end

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }

  it 'creates user with valid input' do 
    expect { create :admin_user }.to change { AdminUser.count }.by(1)
  end
end