require "rails_helper"

describe "the create new question process" do
  it "creates a new question" do
    user = FactoryGirl.create(:user)
    visit log_in_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_on "Submit"
    click_on "Ask a question"
    fill_in "Title", :with => "Question Title"
    fill_in "Body", :with => "This is the question body."
    click_on "Ask"
    expect(page).to have_content "posted"
  end

  it "throws an error when the form isn't filled out" do
    user = FactoryGirl.create(:user)
    visit log_in_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_on "Submit"
    visit new_question_path
    click_on "Ask"
    expect(page).to have_content "boo boo"
  end
end
