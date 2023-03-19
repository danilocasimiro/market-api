# frozen_string_literal: true

class User::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, if: :devise_controller?

  def create
    user = User.new(sign_up_params)

    if user.save
      user.as_json
    else
      render json: user.errors.as_json, status: :unprocessable_entity
    end
  end

  protected

  def sign_up_params
    params.require(:user).permit(:email, :password, :active)
  end

  def configure_permitted_parameters
    attributes = %i[email password active]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end

  def response_to_sign_up_failure(resource)
    if resource.email == '' && resource.password.nil?
      render json: { error: 'Email or password cannot be blank.', status: 400 }
    elsif User.pluck(:email).include? resource.email
      render json: { error: 'email already exists', status: 400 }
    end
  end
end
