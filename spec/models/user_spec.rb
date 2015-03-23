require "rails_helper"

describe User do
  it { should validate_presence_of :username }
  it { should validate_presence_of :email }
  it { should validate_confirmation_of :password }
  it { should have_many :questions }
  it { should have_many :responses }

  # describe "#authenticate" do
  #   user = FactoryGirl.create(:user)
  #   current_user = User.authenticate('user@domain.tld', 'password1234')
  #   expect(current_user).to eq(user)
  # end
end
