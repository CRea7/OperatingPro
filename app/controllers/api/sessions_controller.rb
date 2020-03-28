class Api::SessionsController < ApplicationController
  include CurrentUserConcern

  def index
    user = User.order('created_at DESC')
    render json: {status: 'SUCCESS', message: 'Loaded Users', data:user},status: :ok
  end

  def create
    user = User.find_by(email: params['email'])
               .try(:authenticate, params['password'])
    if user
      session[:user_id] = user.id
      p session[:user_id]
      render json: {
          status: :created,
          logged_in: true,
          user: user
      }
    else
      render json: { status: 401 }
    end
  end

  def logged_in
    if @current_user
      render json: {
          logged_in: true,
          user: @current_user
      }
    else
      p session[:user_id]
      render json: {
          logged_in: false
      }
    end
  end

  def destroy
    reset_session
    render json: {status: 200, logged_out: true}
  end
end
