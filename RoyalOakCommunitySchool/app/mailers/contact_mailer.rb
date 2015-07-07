class ContactMailer < ApplicationMailer
  def contact_email(email_obj)
    @email = email_obj
    mail(to: ENV['to_address'], subject: @email.subject)
  end
end
