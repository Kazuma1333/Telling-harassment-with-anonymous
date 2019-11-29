# Preview all emails at http://localhost:3000/rails/mailers/ask_mailer
class AskMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/ask_mailer/get_email
  def get_email
    AskMailer.get_email
  end

end
