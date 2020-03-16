class RegistrationsController < ApplicationController
  def create
    user = User.create!(
        email: params['email'],
        password: params['password'],
        password_confirmation: params['password_confirmation'],
        department: params['department'],
        admin:params['admin'],
        approver:params['approver']
    )

    if user
      session[:user_id] = user.id
      render json: {
          status: :created,
          user: user
      }
    else
      render json: { status: 500 }
    end
  end
end
