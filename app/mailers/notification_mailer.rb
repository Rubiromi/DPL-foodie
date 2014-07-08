class NotificationMailer < ActionMailer::Base
  default from: "no-reply@myapp.com"

  def contact_form(params)
    @params = params
    mail(from: @params[:user_email], to: 'me@myapp.com', subject: 'You have a new contact request')
  end

end
