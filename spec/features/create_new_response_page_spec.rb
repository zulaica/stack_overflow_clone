require 'rails_helper'

describe 'the create new response process' do
  it 'creates a new response' do
    user = FactoryGirl.create(:user)
    question = FactoryGirl.create(:question)
    visit log_in_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_on "Submit"
    visit question_path(question)
    click_on 'Submit a response'
    fill_in 'Body', :with => 'Just keep on that stuff'
    click_on 'Respond'
    expect(page).to have_content 'appreciated'
  end

  it "throws an error when the response isn't filled out" do
    user = FactoryGirl.create(:user)
    question = FactoryGirl.create(:question)
    visit log_in_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_on "Submit"
    visit question_path(question)
    click_on 'Submit a response'
    click_on 'Respond'
    expect(page).to have_content 'boo boo'
  end
end
