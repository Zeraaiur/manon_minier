class MessageMailer < ApplicationMailer
  default :to => "coach@manonminierdiction.com"

  def contact(message)
    @contenu = message.contenu

    mail to: "david.poisson.pare@gmail.com", from: message.courriel
  end

end
