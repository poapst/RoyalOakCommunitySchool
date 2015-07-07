class ApplicationMailer < ActionMailer::Base
  default from: ENV['from_address']
  layout 'mailer'
end