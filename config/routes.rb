Rails.application.routes.draw do
  resources :installments, only: %i[new create]
  resources :loans
  resources :requesters
end
