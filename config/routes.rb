Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
  # resources :bosses
  # match 'bosses/new', to: 'bosses#create', via: :post

  get '/bosses', to: 'bosses#index', as: :bosses
  get '/bosses/new', to: 'bosses#new', as: :new_boss
  post 'bosses/new', to: 'bosses#create'
end
