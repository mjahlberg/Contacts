Calendar::Application.routes.draw do

  # localhost:3000 is equivalent to localhost:3000/contacts
  # resources :reviews
  resources :users, except:[:show]
  resource :session, only:[:create, :destroy, :new]

  root 'welcome#index'

  # -------------------------------------------------------------------

  #CREATE
  # This knows to look up 'contacts and look up the index page'
  get 'contacts' => 'contacts#index', as: :contacts

  # This is here to allow the creation of a new value
  post 'contacts' => 'contacts#create'

  #READ
  # New needs to be before ID for the show
  get 'contacts/new' => 'contacts#new'

  # This is only here now to support the destroy routes below
  get 'contacts/:id' => 'contacts#show', as: :contact 

  #UPDATE
  # This will allow you to edit the entry that has been made
  get 'contacts/:id/edit' => 'contacts#edit', as: :edit_contact

  # This will allow you to 'patch' or update the entry you edited
  patch 'contacts/:id' => 'contacts#update'

  #DESTROY
  # This will destroy the entry that you have chosen
  delete 'contacts/:id' => 'contacts#destroy'
  
  # -------------------------------------------------------------------

  get 'comment/new' => 'comment#new', as: :one

  # # new route for comments
  # post 'contacts/new_comment' => 'contacts/#new_comment', as: :new_comment

  # comment_controller

  post 'comment/' => 'comment#create', as: :new_comment

  delete 'comment/:id' => 'comment#destroy'

  # -------------------------------------------------------------------

  # THIS IF FOR MODEL PHOTO
    #CREATE
  # This knows to look up 'contacts and look up the index page'
  get 'photos' => 'photos#index', as: :photos

  # This is here to allow the creation of a new value
  post 'photos' => 'photos#create'

  #READ
  # New needs to be before ID for the show
  get 'photos/new' => 'photos#new'

  # This is only here now to support the destroy routes below
  get 'photos/:id' => 'photos#show', as: :photo 

  #UPDATE
  # This will allow you to edit the entry that has been made
  get 'photos/:id/edit' => 'photos#edit', as: :edit_photo

  # This will allow you to 'patch' or update the entry you edited
  patch 'photos/:id' => 'photos#update'

  #DESTROY
  # This will destroy the entry that you have chosen
  delete 'photos/:id' => 'photos#destroy'


  # -------------------------------------------------------------------

  #CREATE
  # This knows to look up 'contacts and look up the index page'
  get 'clients' => 'clients#index', as: :clients

  # This is here to allow the creation of a new value
  post 'clients' => 'clients#create'

  #READ
  # New needs to be before ID for the show
  get 'clients/new' => 'clients#new'

  # This is only here now to support the destroy routes below
  get 'clients/:id' => 'clients#show', as: :client 

  #UPDATE
  # This will allow you to edit the entry that has been made
  get 'clients/:id/edit' => 'clients#edit', as: :edit_client

  # This will allow you to 'patch' or update the entry you edited
  patch 'clients/:id' => 'clients#update'

  #DESTROY
  # This will destroy the entry that you have chosen
  delete 'clients/:id' => 'clients#destroy'

  # -------------------------------------------------------------------

  get 'article/new' => 'article#new', as: :two

  # # new route for articles
  # post 'contacts/new_article' => 'contacts/#new_article', as: :new_article

  # article_controller

  post 'article/' => 'article#create', as: :new_article

  delete 'article/:id' => 'article#destroy'


end






















