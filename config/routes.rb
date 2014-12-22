Rails.application.routes.draw do

    devise_for :users, ActiveAdmin::Devise.config
    ActiveAdmin.routes(self)
    mount RedactorRails::Engine => '/redactor_rails'

    root to: 'home#index'

end
