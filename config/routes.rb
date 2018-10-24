Rails.application.routes.draw do
  get 'about' => 'welcome#about'
  get 'scenarios' => 'scenario#index'
  get 'scenario/show'
  get 'stats' => 'stat#index'
  get 'stat/show'
  get 'dragons' => 'dragon#index'
  get 'dragon/show'
  get 'creatures' => 'creature#index'
  get 'creature/show'
  get 'characters' => 'character#index'
  get 'character/show'
  resources :characters
  resources :creatures
  resources :dragons
  resources :scenarios
  resources :stats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
