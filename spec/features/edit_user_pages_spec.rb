require "rails_helper"

describe "the edit user process" do
  let(:user) { FactoryGirl.create(:user) }

  it "edits the user account" do
    visit user_path(user)
    click_on "Edit your account information"
    click_on "Submit"
    expect(page).to have_content "updated"
  end
end
