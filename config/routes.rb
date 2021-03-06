Rails.application.routes.draw do

  resources :subscriptions, only: [:new, :create] do
    get :pending, on: :collection
  end

  get "subscriptions/:confirmation_token/confirm" => "subscriptions#confirm", as: :confirm_subscription

end
