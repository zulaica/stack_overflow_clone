require 'rails_helper'

describe Question do
  it { should validate_presence_of :title }
  it { should validate_presence_of :body }
  it { should validate_presence_of :user_id }
  it { should have_many :responses }
end
