ConnectIN::Application.routes.draw do
  root :to => 'static_pages#home'

  resources :replies
  resources :opinions
  resources :companies
  resources :contractors
  resources :profiles
  resources :sessions, only: [:new, :create, :destroy]
  resources :contractor_sessions, only: [:new, :create, :destroy] 
 
  
  # RESOURCES
  resources :postings do
    member do
      get 'inquiry'
      get 'dashboard'
    end
  end


  # GETS
  get "static_pages/home"
  get "static_pages/help"
  get "contractors/profile"

  # URLS
  match '/index', to: 'companies#index'
  match '/help', to: 'static_pages#help'
  match '/contractors_signup', to: 'contractors#signup'
  match '/companies_show', to: 'sessions#show'
  match '/companies_signup', to: 'companies#signup'
  match '/companies/:id', to: 'companies#show'
  match '/contractors/', to: 'contractors#profile'
  match '/companies_signin', to: 'sessions#new'
  match '/companies_signout', to: 'sessions#destroy'
  match '/contractors_signin', to: 'contractor_sessions#new'
  match 'contractors_signout', to: 'contractor_sessions#destroy'
  match 'companies_search', to: 'companies#search'
  match '/contractors_search', to: 'contractors#searchposting'
  match '/showAllCompany', to: 'companies#showall'
  match '/postingall', to: 'postings#index'
  match "/contractors_relationship", to: 'contractors#relationship'
  match '/error', to: 'shared#error'
  match '/contractors_show', to: 'contractors#show'
  match '/message', to: 'postings#dashboard'
  # The priority is based upon order of creation:
  # first created -> highest priority.
  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products


end
