Rails.application.routes.draw do
  devise_for :users
  root 'application#index'
  devise_scope :user do   
    get 'new_user_registration' => 'devise/registrations#new'
    get 'new_user_session' => 'devise/sessions#new'
    get 'edit_user_registration' => 'devise/registrations#edit'
    get 'destroy_user_session' => 'devise/sessions#destroy'

  end
end
