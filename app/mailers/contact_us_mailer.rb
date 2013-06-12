class ContactUsMailer < ActionMailer::Base
  default :from => "luke@breezedigs.com"
  default :to => "luke@breezedigs.com"

  def new_message(message)
    @message = message
    mail(:subject => "Breezedigs - #{message.subject}")
  end
end
