class MessageMailer < ApplicationMailer

  def contact(message)
    @contenu = message.contenu

    mail to: "zeraaiur@hotmail.com", from: message.courriel
  end

end
