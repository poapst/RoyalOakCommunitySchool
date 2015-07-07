class ContactController < ApplicationController
  def index
  end

  def create
    @contact = Email.new(params[:contact])
    if @contact.valid?
      if verify_recaptcha(:model => @contact, :message => "The CAPTCHA entered was incorrect. Please try again.")
        ContactMailer.contact_email(@contact).deliver!
        @success_message = "Message sent! Thank you for contacting us."
      end
    end
    render :action => 'index'
  end
end
