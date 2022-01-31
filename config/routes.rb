Rails.application.routes.draw do
  get 'profile/index'
  resources :notes
  devise_for :users
  root 'homes#index'
  get 'homes/index'
  get 'homes/faq'


  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
end
