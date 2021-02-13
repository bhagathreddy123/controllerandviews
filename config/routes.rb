Rails.application.routes.draw do
  get 'subjects/index'
  get 'subjects/new'
  get 'subjects/edit'
  get 'subjects/show'
  get 'demo/index'
  get 'demo/cotact'
  get 'demo/about'
  root 'demo#index'
  get 'menu' => 'access#menu'
  get 'login' =>'access#new'
  get "logout" => "access#destroy"
  resource :access, controller: 'access', except: [:show, :edit, :update] do
  	member do
  		get :menu
  	end
  end
  resources :subjects do
  	member do
  		get :delete
  	end
  end
end
