Rails.application.routes.draw do

    devise_for :users, ActiveAdmin::Devise.config
    ActiveAdmin.routes(self)
    mount RedactorRails::Engine => '/redactor_rails'

    get 'contacts', to: 'contacts#index', as: :contacts
    post 'contacts', to: 'contacts#create'

    root to: 'home#index'

end
