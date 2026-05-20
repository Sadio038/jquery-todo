Rails.application.routes.draw do
  resources :emails do
    member do
      patch :toggle_read
    end
  end

  root "emails#index"
end