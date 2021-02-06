Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
  get '/bosses', to: 'bosses#index'
  get '/bosses/new', to: 'bosses#new'
end
