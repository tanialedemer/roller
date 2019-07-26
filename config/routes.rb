Rails.application.routes.draw do
  #danza
  get 'nivel_danza/index'
  get 'nivel_danza/show'
  get 'nivel_danza/new'
  post 'nivel_danza/create'
  get 'nivel_danza/:id/edit', to: 'nivel_danza#edit', as: 'nivel_danza_edit'
  patch 'nivel_danza/:id/edit', to: 'nivel_danza#update', as: 'nivel_danza_update'
  get 'nivel_danza/destroy/:id', to: 'nivel_danza#destroy', as: 'nivel_danza_borrar'
  #libre
  get 'nivel_libre/index'
  get 'nivel_libre/show'
  get 'nivel_libre/new'
  post 'nivel_libre/create'
  get 'nivel_libre/:id/edit', to: 'nivel_libre#edit', as: 'nivel_libre_edit'
  patch 'nivel_libre/:id/edit', to: 'nivel_libre#update', as: 'nivel_libre_update'
  get 'nivel_libre/destroy/:id', to: 'nivel_libre#destroy', as: 'nivel_libre_borrar'
  #escuela
  get 'nivel_escuela/index'
  get 'nivel_escuela/show'
  get 'nivel_escuela/new'
  post 'nivel_escuela/create'
  get 'nivel_escuela/:id/edit', to: 'nivel_escuela#edit', as: 'nivel_escuela_edit'
  patch 'nivel_escuela/:id/edit', to: 'nivel_escuela#update', as: 'nivel_escuela_update'
  get 'nivel_escuela/destroy/:id', to: 'nivel_escuela#destroy', as: 'nivel_escuela_borrar'
  #athlete
  get 'athlete/index'
  get 'athlete/new'
  post 'athlete/create'
  get 'athlete/:id/edit', to: 'athlete#edit', as: 'athlete_edit'
  patch 'athlete/:id/edit', to: 'athlete#update', as: 'athlete_update'
  get 'athlete/borrar/:id', to: 'athlete#destroy', as: 'athlete_borrar'



  #home
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
