class RegistrationsController < Devise::RegistrationsController

	def new
	end

	def create
	        @user = User.new(user_params)    
	      if @user.save
	        flash[:success] = "Please confirm your email address to continue"
	        redirect_to new_user_session_path
	      else
	        flash[:error] = "Ooooppss, something went wrong!"
	        render 'new'
	      end
	  end


	private
	    # Use callbacks to share common setup or constraints between actions.
	    def set_user
	      @user = User.find(params[:id])
	    end

	    # Never trust parameters from the scary internet, only allow the white list through.
	    def user_params
	      params.require(:user).permit(:email, :password, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :email_confirmed, :confirm_token, :confirmation_token, :confirmed_at, :confirmation_sent_at)
	    end
end