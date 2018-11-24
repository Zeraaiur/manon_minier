class MessageMailer < ApplicationMailer

  def contact(message)
    @contenu = message.contenu

    mail to: "coach@manonminierdiction.com", from: message.courriel
  end

end
