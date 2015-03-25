class UserMailer < ActionMailer::Base
  default from: 'from@example.com'

  def signup_confirmation(user)
    @greeting = 'Hi'
# this @user is added in so that the view will have access to it as well.
    @user = user

    mail to: user.email, subject: 'signup up confirmation'
  end
end




# my comments = the signup_confirmation can work without an argument as long as
# the mail to: is set to an actual email address.
