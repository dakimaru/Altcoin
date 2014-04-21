class ContactMailer < ActionMailer::Base
  default :from => "noreply@coinbridge.org"          

  def admin_message(message)
    @message = message
    mail(:to => "dakimaru@activehelper.org", :subject => "Notification Request - #{message.email}")
  end
  
  def thankyou_message(message)
    @message = message
    mail(:to => "#{message.email}", :subject => "Notification Confirmation - #{message.email}")
  end
end
