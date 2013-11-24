class UsersController < ApplicationController
   before_filter :set_user, :authenticate_user!

  def show
    render :show
  end

  # def generate_new_password_email
  #     user = User.find(params[:user_id])
  #     user.send_reset_password_instructions
  #     flash[:notice] = "Reset password instructions have been sent to #{user.email}."
  #     redirect_to admin_user_path(user)
  # end

  private

  def set_user
    @user = current_user
  end

end  

