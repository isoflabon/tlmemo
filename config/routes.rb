Rails.application.routes.draw do
  root to: 'home#sign_in'
  devise_for :users
end
