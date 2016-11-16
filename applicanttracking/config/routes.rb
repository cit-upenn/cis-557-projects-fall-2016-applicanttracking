# == Route Map
#
#               Prefix Verb   URI Pattern                                Controller#Action
#              answers GET    /answers(.:format)                         answers#index
#                      POST   /answers(.:format)                         answers#create
#           new_answer GET    /answers/new(.:format)                     answers#new
#          edit_answer GET    /answers/:id/edit(.:format)                answers#edit
#               answer GET    /answers/:id(.:format)                     answers#show
#                      PATCH  /answers/:id(.:format)                     answers#update
#                      PUT    /answers/:id(.:format)                     answers#update
#                      DELETE /answers/:id(.:format)                     answers#destroy
#                      GET    /questions/prompt/:question_type(.:format) questions#prompt
#            questions GET    /questions(.:format)                       questions#index
#                      POST   /questions(.:format)                       questions#create
#         new_question GET    /questions/new(.:format)                   questions#new
#        edit_question GET    /questions/:id/edit(.:format)              questions#edit
#             question GET    /questions/:id(.:format)                   questions#show
#                      PATCH  /questions/:id(.:format)                   questions#update
#                      PUT    /questions/:id(.:format)                   questions#update
#                      DELETE /questions/:id(.:format)                   questions#destroy
#                users GET    /users(.:format)                           users#index
#                      POST   /users(.:format)                           users#create
#             new_user GET    /users/new(.:format)                       users#new
#            edit_user GET    /users/:id/edit(.:format)                  users#edit
#                 user GET    /users/:id(.:format)                       users#show
#                      PATCH  /users/:id(.:format)                       users#update
#                      PUT    /users/:id(.:format)                       users#update
#                      DELETE /users/:id(.:format)                       users#destroy
#               admins GET    /admins(.:format)                          admins#index
#                      POST   /admins(.:format)                          admins#create
#            new_admin GET    /admins/new(.:format)                      admins#new
#           edit_admin GET    /admins/:id/edit(.:format)                 admins#edit
#                admin GET    /admins/:id(.:format)                      admins#show
#                      PATCH  /admins/:id(.:format)                      admins#update
#                      PUT    /admins/:id(.:format)                      admins#update
#                      DELETE /admins/:id(.:format)                      admins#destroy
#            linkedins GET    /linkedins(.:format)                       linkedins#index
#                      POST   /linkedins(.:format)                       linkedins#create
#         new_linkedin GET    /linkedins/new(.:format)                   linkedins#new
#        edit_linkedin GET    /linkedins/:id/edit(.:format)              linkedins#edit
#             linkedin GET    /linkedins/:id(.:format)                   linkedins#show
#                      PATCH  /linkedins/:id(.:format)                   linkedins#update
#                      PUT    /linkedins/:id(.:format)                   linkedins#update
#                      DELETE /linkedins/:id(.:format)                   linkedins#destroy
#              githubs GET    /githubs(.:format)                         githubs#index
#                      POST   /githubs(.:format)                         githubs#create
#           new_github GET    /githubs/new(.:format)                     githubs#new
#          edit_github GET    /githubs/:id/edit(.:format)                githubs#edit
#               github GET    /githubs/:id(.:format)                     githubs#show
#                      PATCH  /githubs/:id(.:format)                     githubs#update
#                      PUT    /githubs/:id(.:format)                     githubs#update
#                      DELETE /githubs/:id(.:format)                     githubs#destroy
#                      GET    /awards/user/:id(.:format)                 awards#user
#               awards GET    /awards(.:format)                          awards#index
#                      POST   /awards(.:format)                          awards#create
#            new_award GET    /awards/new(.:format)                      awards#new
#           edit_award GET    /awards/:id/edit(.:format)                 awards#edit
#                award GET    /awards/:id(.:format)                      awards#show
#                      PATCH  /awards/:id(.:format)                      awards#update
#                      PUT    /awards/:id(.:format)                      awards#update
#                      DELETE /awards/:id(.:format)                      awards#destroy
#                      GET    /extracurriculars/user/:id(.:format)       extracurriculars#user
#     extracurriculars GET    /extracurriculars(.:format)                extracurriculars#index
#                      POST   /extracurriculars(.:format)                extracurriculars#create
#  new_extracurricular GET    /extracurriculars/new(.:format)            extracurriculars#new
# edit_extracurricular GET    /extracurriculars/:id/edit(.:format)       extracurriculars#edit
#      extracurricular GET    /extracurriculars/:id(.:format)            extracurriculars#show
#                      PATCH  /extracurriculars/:id(.:format)            extracurriculars#update
#                      PUT    /extracurriculars/:id(.:format)            extracurriculars#update
#                      DELETE /extracurriculars/:id(.:format)            extracurriculars#destroy
#                      GET    /educations/user/:id(.:format)             educations#user
#           educations GET    /educations(.:format)                      educations#index
#                      POST   /educations(.:format)                      educations#create
#        new_education GET    /educations/new(.:format)                  educations#new
#       edit_education GET    /educations/:id/edit(.:format)             educations#edit
#            education GET    /educations/:id(.:format)                  educations#show
#                      PATCH  /educations/:id(.:format)                  educations#update
#                      PUT    /educations/:id(.:format)                  educations#update
#                      DELETE /educations/:id(.:format)                  educations#destroy
#                      GET    /experiences/user/:id(.:format)            experiences#user
#          experiences GET    /experiences(.:format)                     experiences#index
#                      POST   /experiences(.:format)                     experiences#create
#       new_experience GET    /experiences/new(.:format)                 experiences#new
#      edit_experience GET    /experiences/:id/edit(.:format)            experiences#edit
#           experience GET    /experiences/:id(.:format)                 experiences#show
#                      PATCH  /experiences/:id(.:format)                 experiences#update
#                      PUT    /experiences/:id(.:format)                 experiences#update
#                      DELETE /experiences/:id(.:format)                 experiences#destroy
#                      GET    /users(.:format)                           users#index
#                      POST   /users(.:format)                           users#create
#                      GET    /users/new(.:format)                       users#new
#                      GET    /users/:id/edit(.:format)                  users#edit
#                      GET    /users/:id(.:format)                       users#show
#                      PATCH  /users/:id(.:format)                       users#update
#                      PUT    /users/:id(.:format)                       users#update
#                      DELETE /users/:id(.:format)                       users#destroy
#                 root GET    /                                          users#login
#

Rails.application.routes.draw do
  devise_for :user_credentials 

  resources :answers

  resources :questions do
    collection do
      get 'prompt/:question_type' => 'questions#prompt'
    end
  end

  
  resources :users
  resources :admins
  resources :linkedins
  resources :githubs

  resources :awards do
    collection do
      get 'user/:id' => 'awards#user'
    end
  end

  resources :extracurriculars do
    collection do
      get 'user/:id' => 'extracurriculars#user'
    end
  end

  resources :educations do
    collection do
      get 'user/:id' => 'educations#user'
    end
  end

  resources :experiences do
    collection do
      get 'user/:id' => 'experiences#user'
    end
  end
  

  root to: 'user_credentials#sign_in'


  #devise_scope :user_credentials do 
  #end
  #root to: 'devise/sessions#new'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
