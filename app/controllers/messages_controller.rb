class MessagesController < ApplicationController
 
 before_filter :set_user
 
 def index
   if params[:mailbox] == "sent"
    @messages = @user.sent_messages
   elsif params[:mailbox] == "inbox"
    @messages = @user.received_messages
    #elsif params[:mailbox] == "archieved"
    # @messages = @user.archived_messages
   end
 end
 
 def new
   @message = Message.new
    if params[:reply_to]
      @reply_to = User.find_by_user_id(params[:reply_to])
    unless @reply_to.nil?
       @message.recipient_id = @reply_to.user_id
    end
   end
 end
 
 def create
  @message = Message.new(message_params)
  # @message = Message.new(params[:message])
  @message.sender_id = @user.id
   if @message.save
    flash[:notice] = "Message has been sent"
    redirect_to user_messages_path(current_user, :mailbox=>:inbox)
   else
    render :action => :new
   end
 end
 
 def show
  @message = Message.readingmessage(params[:id],@user.id)
 end
 
 def delete_multiple
   if params[:delete]
     params[:delete].each { |id|
     @message = Message.find(id)
     @message.mark_message_deleted(@message.id,@user.id) unless @message.nil?
   }
     flash[:notice] = "Messages deleted"
   end
     redirect_to user_messages_path(@user, @messages)
 end
 
 private

   def message_params
      params.require(:message).permit(:recipient_id, :subject, :body, :sender_id, :read_at, :sender_deleted, :recipient_deleted)
   end


   def set_user
    @user = current_user
   end


end