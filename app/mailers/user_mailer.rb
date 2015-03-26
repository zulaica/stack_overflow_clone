class UserMailer < ActionMailer::Base
  default from: 'from@example.com'

  def signup_confirmation(user)
    @greeting = 'Hi'
    @user = user

    mail to: user.email, subject: "Signup confirmation"
  end
end
