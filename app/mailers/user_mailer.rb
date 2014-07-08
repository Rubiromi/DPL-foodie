class UserMailer < ActionMailer::Base
  default from: "no-reply@mysterious-cliffs-2077.herokuapp.com"

  def welcome(user_email)
    @user_email = user_email
    mail(to: @user_email, subject: 'Welcome to the club')
  end
end
