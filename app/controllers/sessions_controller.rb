# frozen_string_literal: true

class SessionsController < Devise::SessionsController
  def create
    user = User.find_by_email(sign_in_params[:email])

    if user&.valid_password?(sign_in_params[:password])
      render json: user.as_json
    else
      render json: { errors: { 'email or password' => ['is invalidsdsadsa'] } }, status: :unprocessable_entity
    end
  end

  private

  def sign_in_params
    params.permit(:email, :password)
  end
end
