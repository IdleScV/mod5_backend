Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :users
resources :timelines
resources :events
resources :ets

get 'user_timelines/:id', :to => 'timelines#privateIndex'

end
