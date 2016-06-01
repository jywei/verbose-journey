Rails.application.routes.draw do

  namespace :admin do
    resources :media_contents
    # post 'media_contents', to: "media_contents#create"
    delete 'delete_media', to: "media_contents#delete_media"
    delete 'delete_all', to: 'media_contents#delete_all'
  end

  namespace :admin do
    resources :og_main_pages
  end

  namespace :admin do
    resources :stories
  end

  namespace :admin do
    resources :infos
  end

  namespace :admin do
    resources :areas
  end

  post "stores/search" => "stores#search"

  get "home/translate" => "home#translate"


  resources :brands
  resources :abouts
  resources :contacts
  resources :news
  resources :stores
  resources :subscribes
  resources :products
  resources :inspections
  mount Ckeditor::Engine => '/ckeditor'

  namespace :admin do
    root 'home#index'
    resources :site_configs
    resources :site_config_images
    resources :contacts
    resources :news
    resources :brands
    resources :products
    resources :images
    resources :histories
    resources :abouts
    resources :staffs
    resources :stores
    resources :subscribes
    resources :subproducts
  end


  get "home/new_verification" => "home#new_verification"
  post "home/verification" => "home#verification"
  get 'home/terms_of_service'
  get 'home/privacy_policy'
  devise_for :users

  get "brand/:url_name" => "brands#show"
  get "product/:url_name" => "products#show"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  # get "*other", :to => 'root_path'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
