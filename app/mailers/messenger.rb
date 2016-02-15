class Messenger < ActionMailer::Base
  default from: "kellybhoward@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.messenger.gmail_message.subject
  #
  def application_received(message)
    @message = message
    mail(to: "kellybhoward@gmail.com", subject: "Welcome to Forte!")
  end

  def application_accepted(message)
    @message = message
    mail(to: "kellybhoward@gmail.com", subject: "Voila! You’ve been accepted to Forte!")
  end

  def application_on_hold(message)
    @message = message
    mail(to: "kellybhoward@gmail.com", subject: "Your application is on hold")
  end

  def lesson_proposal(message)
    @message = message
    mail(to: "kellybhoward@gmail.com", subject: "Portfolio: #{@message[:reason]}")
  end

  def lesson_confirmation(message)
    @message = message
    mail(to: "kellybhoward@gmail.com", subject: "Portfolio: #{@message[:reason]}")
  end

  def lesson_reminder(message)
    @message = message
    mail(to: "kellybhoward@gmail.com", subject: "Portfolio: #{@message[:reason]}")
  end

  def lesson_summary(message)
    @message = message
    mail(to: "kellybhoward@gmail.com", subject: "Portfolio: #{@message[:reason]}")
  end

  def forgot_password(message)
    @message = message
    mail(to: "kellybhoward@gmail.com", subject: "Portfolio: #{@message[:reason]}")
  end

end
