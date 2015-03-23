require 'rails_helper'

describe 'the create new response process' do
  it 'creates a new response' do
    question = FactoryGirl.create(:question)
    visit question_path(question)
    click_on 'Submit a response'
    fill_in 'Body', :with => 'Just keep on that stuff'
    click_on 'Respond'
    expect(page).to have_content 'appreciated'
  end

  it "throws an error when the response isn't filled out" do
    question = FactoryGirl.create(:question)
    visit question_path(question)
    click_on 'Submit a response'
    click_on 'Respond'
    expect(page).to have_content 'boo boo'
  end
end
