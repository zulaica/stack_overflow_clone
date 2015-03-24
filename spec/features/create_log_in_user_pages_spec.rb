require "rails_helper"

describe 'the log in process' do
  it 'logs in a current user' do
    user = FactoryGirl.create(:user)
    visit log_in_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_on 'Log In'
    expect(page).to have_content "logged"
  end

  it 'throws an error when a field is not filled out correctly' do
    visit log_in_path
    click_on 'Log In'
    expect(page).to have_content "logging"
  end
end
