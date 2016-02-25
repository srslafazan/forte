class Messenger < ActionMailer::Base
  default from: "kellybhoward@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.messenger.gmail_message.subject
  #
  def application_received(message_info)
    @message_info = message_info
    mail(to: "#{@message_info[:email]}", subject: "Welcome to Forte!")
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
    mail(to: "kellybhoward@gmail.com", subject: "Lesson Proposal with [Emily]!")
  end

  def lesson_confirmation(message)
    @message = message
    mail(to: "kellybhoward@gmail.com", subject: "Confirmed Lesson with [Emily]! ")
  end

  def lesson_reminder(message)
    @message = message
    mail(to: "kellybhoward@gmail.com", subject: "Lesson Tomorrow with [Emily]!")
  end

  def lesson_summary(message)
    @message = message
    mail(to: "kellybhoward@gmail.com", subject: "Your [date] Lesson with [Emily] ")
  end

  def forgot_password(message)
    @message = message
    mail(to: "kellybhoward@gmail.com", subject: "Your Forte Account Information")
  end

end
