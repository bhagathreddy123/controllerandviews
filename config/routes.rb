Rails.application.routes.draw do
  get 'menu' => 'access#menu'
  get 'login' =>'access#new'
  get "logout" => "access#destroy"
  resource :access, controller: 'access', except: [:show, :edit, :update] do
  	member do
  		get :menu
  	end
  end
end
