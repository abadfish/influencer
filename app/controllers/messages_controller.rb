class MessagesController < ApplicationController
  before_action :authenticate_user!

  # @chosen_recipient either contains a user record or a nil value.
  def new
    @chosen_recipient = User.find_by(id: params[:to].to_i) if params[:to]
  end

  # Find an array of users (stored in the params['recipients']) and
  # use Mailboxer’s send_message method, passing in the recipients, body, and the subject
  def create
    recipients = User.where(id: params['recipients'])
    conversation = current_user.send_message(recipients, params[:message][:body], params[:message][:subject]).conversation
    flash[:success] = "Message has been sent!"
    redirect_to conversation_path(conversation)
  end
end
