Rails.application.routes.draw do
  namespace 'api' do
      resources :procedures do

      put 'updatepro', on: :member
      end
  end
end
