Rails.application.routes.draw do

    devise_for :users

    get 'contacts', to: 'contacts#index', as: :contacts
    post 'contacts', to: 'contacts#create'

    root to: 'home#index'

end
