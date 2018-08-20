class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new message_params

    if @message.valid?
      MessageMailer.contact(@message).deliver_now
      redirect_to new_message_url, notice: "Votre message a été envoyé avec succès!"
    else
      render :new
    end
  end


private


  def message_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:message).permit(:nom, :courriel, :contenu)
  end



end

