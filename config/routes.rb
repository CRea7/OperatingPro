Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # devise_for :users
  resources :registrations, only: [:create]

  namespace 'api' do

    resources :sessions, only: [:index, :create, :destroy]
    delete :logout, to: 'sessions#logout'
    get :logged_in, to: 'sessions#logged_in'

    resources :trianing do

      put 'complete', on: :member
    end

    resources :procedures do

      put 'current', on: :member
      put 'awaiting', on: :member
      put 'draft', on: :member
      put 'archive', on: :member
    end
  end
end
