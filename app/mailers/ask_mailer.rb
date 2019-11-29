class AskMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ask_mailer.get_email.subject
  #
  def get_email(user)
  @user = user
    mail to: @user.email,
         subject: "【#{@user.name} you get a email from someone 】"
  end
end
