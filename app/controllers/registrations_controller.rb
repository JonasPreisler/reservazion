class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    'reservations_path' # Or :prefix_to_your_route
  end

  def set_user
    @user = User.find(params[:id])
  end

end