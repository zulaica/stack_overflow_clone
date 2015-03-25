require "rails_helper"

describe UserMailer do
  describe "signup_confirmation" do
    # let(:mail) { UserMailer.signup_confirmation }

    it "renders the headers" do
      user = FactoryGirl.create(:user)
      mail = UserMailer.signup_confirmation(user)
      expect(mail.subject).to eq("Signup confirmation")
      expect(mail.to).to eq([user.email])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      user = FactoryGirl.create(:user)
      mail = UserMailer.signup_confirmation(user)
      expect(mail.body.encoded).to have_content "Thanks for signing in!"
    end
  end

end
