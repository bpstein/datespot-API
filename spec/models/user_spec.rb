require 'rails_helper'

RSpec.describe User, type: :model do
  
  let(:user) { create :user }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }

  it 'creates user with valid input' do 
    expect { create :user }.to change { User.count }.by(1)
  end

  it 'does not create user when password mismatches confirmation' do
    user = build :user, password_confirmation: 'mismatch'

    expect(user).to_not be_valid
    expect(user.errors.first).to match(
      [:password_confirmation, "doesn't match Password"]
    )
  end

  it 'has verified email' do
    user = create :user
    expect(user).to be_email_verified
  end

  it 'has unverified email if email is temporary' do
    user = create :user, email: 'change@me'
    expect(user).to_not be_email_verified
  end
end
