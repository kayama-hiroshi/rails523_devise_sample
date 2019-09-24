# -*- coding: utf-8 -*-
Rails.application.routes.draw do
    resource :account, :only => [:show] do
        resource :name, :only => [:edit, :update], module: "accounts"
        resource :avatar, :only => [:edit, :update], module: "accounts"
        # ユーザ名、パスワード、email の変更
        resource :username, :only => [:edit, :update], module: "accounts"
        resource :email, :only => [:edit, :update], module: "accounts"
        resource :password, :only => [:edit, :update], module: "accounts"
    end

    # devise_for :users
    devise_for :users, controllers: {
        sessions:      'users/sessions',
        passwords:     'users/passwords',
        registrations: 'users/registrations'
    }
    
    get 'home/index'
    root to: "home#index"
    # For details on the DSL available within this file, 
    # see http://guides.rubyonrails.org/routing.html
end
