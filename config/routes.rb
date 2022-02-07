Rails.application.routes.draw do
  resources :devices do
    resources :cameras, shallow: true
  end
end
