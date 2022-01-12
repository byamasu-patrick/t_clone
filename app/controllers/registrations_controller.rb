class RegistrationsController < Devise::RegistrationsController

	private
	def sign_up_params
		params.require(:user).permit(:name, :username, :email, :password, :password_confirmatiion)
	end
	def account_update_params
		params.require(:user).permit(:name, :username, :email, :password, :password_confirmatiion, :current_password)
	end
	
end