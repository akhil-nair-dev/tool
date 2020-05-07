Rails.application.routes.draw do
  
  resources :teams
  resources :projects
   as :user do
    put '/user/confirmation' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation
  end
  devise_for :users, controllers: {
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    confirmations: 'confirmations'
}
  root to: "home#index"
end
