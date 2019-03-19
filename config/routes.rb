# frozen_string_literal: true

Rails.application.routes.draw do
  ##### ROTA DO DEVISE
  devise_for :users,
             path: :acesso,
             controllers: {
               registrations: 'users/registrations'
             },
             path_names: {
               sign_out: :sair,
               sign_in: :login,
               password: :secret,
               confirmation: :verification,
               unlock: :unblock,
               registration: :'minha-conta',
               sign_up: :'cadastre-se',
               edit: :'editar-perfil'
             }

  resources :users
  resources :videos

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
