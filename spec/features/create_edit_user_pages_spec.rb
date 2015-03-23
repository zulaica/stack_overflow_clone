require "rails_helper"

describe "the edit user process" do
  it "edits the user account" do
    user = FactoryGirl.create(:user)
    visit user_path(user)
    click_on "Edit your account information"
    click_on "Submit"
    expect(page).to have_content "updated"
  end
end
