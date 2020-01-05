Rails.application.routes.draw do
  namespace 'api' do
      resources :procedures do

      put 'current', on: :member
      put 'awaiting', on: :member
      put 'draft', on: :member
      put 'archive', on: :member
      end
  end
end
