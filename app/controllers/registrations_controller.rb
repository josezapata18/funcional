class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :last_name, :email, :password, :password_confirmation, :is_female, :date_of_birth, :permission_level)
  end

  def account_update_params
    params.require(:user).permit(:name, :last_name, :email, :password, :password_confirmation, :current_password, :is_female, :date_of_birth)
  end
end