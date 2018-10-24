Rails.application.routes.draw do
  get 'searach' => 'data#search', as: 'search'
  get 'data' => 'data#show', as: 'data'
  get 'welcome/index', as: 'home'
  root'welcome#index'
  get 'about' => 'welcome#about', as: 'about'
  get 'scenarios' => 'scenario#index', as: 'scenarios'
  get 'scenario/:region' => 'scenario#show', as: 'scenario'
  get 'stats' => 'stat#index', as: 'stats'
  get 'stat/:species' => 'stat#show', as: 'stat'
  get 'dragons' => 'dragon#index', as: 'dragons'
  get 'dragon/:name' => 'dragon#show', as: 'dragon'
  get 'creatures' => 'creature#index', as: 'creatures'
  get 'creature/:name' => 'creature#show', as: 'creature'
  get 'characters' => 'character#index', as: 'characters'
  get 'character/:name' => 'character#show', as: 'character'
  resources :characters
  resources :creatures
  resources :dragons
  resources :scenarios
  resources :stats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
