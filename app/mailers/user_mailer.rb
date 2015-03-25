class UserMailer < ActionMailer::Base
  default from: 'from@example.com'

  def signup_confirmation(user)
    @greeting = 'Hi'
    @user = user



    mail to: user.email, subject: "Signup confirmation"
  end
end




# my comments = the signup_confirmation can work without an argument as long as
# the mail to: is set to an actual email address.
