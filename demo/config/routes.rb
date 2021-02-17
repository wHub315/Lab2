Rails.application.routes.draw do
  
  root 'books#index'

  #get 'hub/HomePage'
  #get 'hub/AddPage'
  #get 'hub/UpdatePage'
  #get 'hub/DetailsPage'
  #get 'hub/DeletePage'

  resources :books do
    member do
      get :delete
    end
  end

  #get 'books/index'
  #get 'books/show'
  #get 'books/new'
  #get 'books/edit'
  #get 'books/delete'

  #resources :hub do
  #  member do
  #    get :delete
  #  end
  #end
  #default route
  #get ':controller(/:action(/:id))'
  #root 'welcome#index'  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
