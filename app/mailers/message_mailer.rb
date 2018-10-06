class MessageMailer < ApplicationMailer
  require 'mailgun'
  def contact(message)
    @contenu = message.contenu
    mg_client = Mailgun::Client.new ENV['mailgun_secret_api_key']

    message_params = {:from => message.courriel,
      :to => ENV['david.poisson.pare@gmail.com'],
      :subject => 'Contact provenant du site web',
      :text => message.contenu}
      mg_client.send_message ENV['mailgun_domain'], message_params

      send
    end

  end
