Rails.application.routes.draw do

    ActiveAdmin.routes(self)
    mount RedactorRails::Engine => '/redactor_rails'

    devise_for :users

    root to: 'home#index'

end
