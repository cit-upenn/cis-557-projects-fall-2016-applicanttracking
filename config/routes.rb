# == Route Map
#
#                                   Prefix Verb     URI Pattern                                       Controller#Action
#             new_admin_credential_session GET      /admin_credentials/sign_in(.:format)              devise/sessions#new
#                 admin_credential_session POST     /admin_credentials/sign_in(.:format)              devise/sessions#create
#         destroy_admin_credential_session DELETE   /admin_credentials/sign_out(.:format)             devise/sessions#destroy
#                admin_credential_password POST     /admin_credentials/password(.:format)             devise/passwords#create
#            new_admin_credential_password GET      /admin_credentials/password/new(.:format)         devise/passwords#new
#           edit_admin_credential_password GET      /admin_credentials/password/edit(.:format)        devise/passwords#edit
#                                          PATCH    /admin_credentials/password(.:format)             devise/passwords#update
#                                          PUT      /admin_credentials/password(.:format)             devise/passwords#update
#     cancel_admin_credential_registration GET      /admin_credentials/cancel(.:format)               devise/registrations#cancel
#            admin_credential_registration POST     /admin_credentials(.:format)                      devise/registrations#create
#        new_admin_credential_registration GET      /admin_credentials/sign_up(.:format)              devise/registrations#new
#       edit_admin_credential_registration GET      /admin_credentials/edit(.:format)                 devise/registrations#edit
#                                          PATCH    /admin_credentials(.:format)                      devise/registrations#update
#                                          PUT      /admin_credentials(.:format)                      devise/registrations#update
#                                          DELETE   /admin_credentials(.:format)                      devise/registrations#destroy
#              new_user_credential_session GET      /user_credentials/sign_in(.:format)               devise/sessions#new
#                  user_credential_session POST     /user_credentials/sign_in(.:format)               devise/sessions#create
#          destroy_user_credential_session DELETE   /user_credentials/sign_out(.:format)              devise/sessions#destroy
#                 user_credential_password POST     /user_credentials/password(.:format)              devise/passwords#create
#             new_user_credential_password GET      /user_credentials/password/new(.:format)          devise/passwords#new
#            edit_user_credential_password GET      /user_credentials/password/edit(.:format)         devise/passwords#edit
#                                          PATCH    /user_credentials/password(.:format)              devise/passwords#update
#                                          PUT      /user_credentials/password(.:format)              devise/passwords#update
#      cancel_user_credential_registration GET      /user_credentials/cancel(.:format)                devise/registrations#cancel
#             user_credential_registration POST     /user_credentials(.:format)                       devise/registrations#create
#         new_user_credential_registration GET      /user_credentials/sign_up(.:format)               devise/registrations#new
#        edit_user_credential_registration GET      /user_credentials/edit(.:format)                  devise/registrations#edit
#                                          PATCH    /user_credentials(.:format)                       devise/registrations#update
#                                          PUT      /user_credentials(.:format)                       devise/registrations#update
#                                          DELETE   /user_credentials(.:format)                       devise/registrations#destroy
#                            upload_answer POST     /answers/:id/upload(.:format)                     answers#upload
#                                          GET      /answers/user/:id(.:format)                       answers#user
#                                          GET      /answers/type/:data_type(.:format)                answers#type
#                                  answers GET      /answers(.:format)                                answers#index
#                                          POST     /answers(.:format)                                answers#create
#                               new_answer GET      /answers/new(.:format)                            answers#new
#                              edit_answer GET      /answers/:id/edit(.:format)                       answers#edit
#                                   answer GET      /answers/:id(.:format)                            answers#show
#                                          PATCH    /answers/:id(.:format)                            answers#update
#                                          PUT      /answers/:id(.:format)                            answers#update
#                                          DELETE   /answers/:id(.:format)                            answers#destroy
#                                          GET      /questions/type/:question_type(.:format)          questions#type
#                                questions GET      /questions(.:format)                              questions#index
#                                          POST     /questions(.:format)                              questions#create
#                             new_question GET      /questions/new(.:format)                          questions#new
#                            edit_question GET      /questions/:id/edit(.:format)                     questions#edit
#                                 question GET      /questions/:id(.:format)                          questions#show
#                                          PATCH    /questions/:id(.:format)                          questions#update
#                                          PUT      /questions/:id(.:format)                          questions#update
#                                          DELETE   /questions/:id(.:format)                          questions#destroy
#                           overview_users GET      /users/overview(.:format)                         users#overview
#                                    users GET      /users(.:format)                                  users#index
#                                          POST     /users(.:format)                                  users#create
#                                 new_user GET      /users/new(.:format)                              users#new
#                                edit_user GET      /users/:id/edit(.:format)                         users#edit
#                                     user GET      /users/:id(.:format)                              users#show
#                                          PATCH    /users/:id(.:format)                              users#update
#                                          PUT      /users/:id(.:format)                              users#update
#                                          DELETE   /users/:id(.:format)                              users#destroy
#                             update_admin POST     /admins/:id(.:format)                             admins#update
#                              user_admins GET      /admins/user/:id(.:format)                        admins#user
#                                   admins GET      /admins(.:format)                                 admins#index
#                                          POST     /admins(.:format)                                 admins#create
#                                new_admin GET      /admins/new(.:format)                             admins#new
#                               edit_admin GET      /admins/:id/edit(.:format)                        admins#edit
#                                    admin GET      /admins/:id(.:format)                             admins#show
#                                          PATCH    /admins/:id(.:format)                             admins#update
#                                          PUT      /admins/:id(.:format)                             admins#update
#                                          DELETE   /admins/:id(.:format)                             admins#destroy
#                                          GET      /customs/user/:id(.:format)                       customs#user
#                                          GET      /customs/user/:id/type/:datatype(.:format)        customs#type
#                                  customs GET      /customs(.:format)                                customs#index
#                                          POST     /customs(.:format)                                customs#create
#                               new_custom GET      /customs/new(.:format)                            customs#new
#                              edit_custom GET      /customs/:id/edit(.:format)                       customs#edit
#                                   custom GET      /customs/:id(.:format)                            customs#show
#                                          PATCH    /customs/:id(.:format)                            customs#update
#                                          PUT      /customs/:id(.:format)                            customs#update
#                                          DELETE   /customs/:id(.:format)                            customs#destroy
#                                          GET      /awards/user/:id(.:format)                        awards#user
#                                   awards GET      /awards(.:format)                                 awards#index
#                                          POST     /awards(.:format)                                 awards#create
#                                new_award GET      /awards/new(.:format)                             awards#new
#                               edit_award GET      /awards/:id/edit(.:format)                        awards#edit
#                                    award GET      /awards/:id(.:format)                             awards#show
#                                          PATCH    /awards/:id(.:format)                             awards#update
#                                          PUT      /awards/:id(.:format)                             awards#update
#                                          DELETE   /awards/:id(.:format)                             awards#destroy
#                                          GET      /extracurriculars/user/:id(.:format)              extracurriculars#user
#                         extracurriculars GET      /extracurriculars(.:format)                       extracurriculars#index
#                                          POST     /extracurriculars(.:format)                       extracurriculars#create
#                      new_extracurricular GET      /extracurriculars/new(.:format)                   extracurriculars#new
#                     edit_extracurricular GET      /extracurriculars/:id/edit(.:format)              extracurriculars#edit
#                          extracurricular GET      /extracurriculars/:id(.:format)                   extracurriculars#show
#                                          PATCH    /extracurriculars/:id(.:format)                   extracurriculars#update
#                                          PUT      /extracurriculars/:id(.:format)                   extracurriculars#update
#                                          DELETE   /extracurriculars/:id(.:format)                   extracurriculars#destroy
#                                          GET      /educations/user/:id(.:format)                    educations#user
#                               educations GET      /educations(.:format)                             educations#index
#                                          POST     /educations(.:format)                             educations#create
#                            new_education GET      /educations/new(.:format)                         educations#new
#                           edit_education GET      /educations/:id/edit(.:format)                    educations#edit
#                                education GET      /educations/:id(.:format)                         educations#show
#                                          PATCH    /educations/:id(.:format)                         educations#update
#                                          PUT      /educations/:id(.:format)                         educations#update
#                                          DELETE   /educations/:id(.:format)                         educations#destroy
#                                          GET      /experiences/user/:id(.:format)                   experiences#user
#                              experiences GET      /experiences(.:format)                            experiences#index
#                                          POST     /experiences(.:format)                            experiences#create
#                           new_experience GET      /experiences/new(.:format)                        experiences#new
#                          edit_experience GET      /experiences/:id/edit(.:format)                   experiences#edit
#                               experience GET      /experiences/:id(.:format)                        experiences#show
#                                          PATCH    /experiences/:id(.:format)                        experiences#update
#                                          PUT      /experiences/:id(.:format)                        experiences#update
#                                          DELETE   /experiences/:id(.:format)                        experiences#destroy
#                                     root GET      /                                                 users#index
#          new_api_user_credential_session GET      /api/v1/auth/sign_in(.:format)                    devise_token_auth/sessions#new
#              api_user_credential_session POST     /api/v1/auth/sign_in(.:format)                    devise_token_auth/sessions#create
#      destroy_api_user_credential_session DELETE   /api/v1/auth/sign_out(.:format)                   devise_token_auth/sessions#destroy
#             api_user_credential_password POST     /api/v1/auth/password(.:format)                   devise_token_auth/passwords#create
#         new_api_user_credential_password GET      /api/v1/auth/password/new(.:format)               devise_token_auth/passwords#new
#        edit_api_user_credential_password GET      /api/v1/auth/password/edit(.:format)              devise_token_auth/passwords#edit
#                                          PATCH    /api/v1/auth/password(.:format)                   devise_token_auth/passwords#update
#                                          PUT      /api/v1/auth/password(.:format)                   devise_token_auth/passwords#update
#  cancel_api_user_credential_registration GET      /api/v1/auth/cancel(.:format)                     devise_token_auth/registrations#cancel
#         api_user_credential_registration POST     /api/v1/auth(.:format)                            devise_token_auth/registrations#create
#     new_api_user_credential_registration GET      /api/v1/auth/sign_up(.:format)                    devise_token_auth/registrations#new
#    edit_api_user_credential_registration GET      /api/v1/auth/edit(.:format)                       devise_token_auth/registrations#edit
#                                          PATCH    /api/v1/auth(.:format)                            devise_token_auth/registrations#update
#                                          PUT      /api/v1/auth(.:format)                            devise_token_auth/registrations#update
#                                          DELETE   /api/v1/auth(.:format)                            devise_token_auth/registrations#destroy
#               api_v1_auth_validate_token GET      /api/v1/auth/validate_token(.:format)             devise_token_auth/token_validations#validate_token
#                      api_v1_auth_failure GET      /api/v1/auth/failure(.:format)                    devise_token_auth/omniauth_callbacks#omniauth_failure
#                                          GET      /api/v1/auth/:provider/callback(.:format)         devise_token_auth/omniauth_callbacks#omniauth_success
#                                          GET|POST /omniauth/:provider/callback(.:format)            devise_token_auth/omniauth_callbacks#redirect_callbacks
#                         omniauth_failure GET|POST /omniauth/failure(.:format)                       devise_token_auth/omniauth_callbacks#omniauth_failure
#                                          GET      /api/v1/auth/:provider(.:format)                  redirect(301)
#         new_api_admin_credential_session GET      /api/v1/auth/admin/sign_in(.:format)              devise_token_auth/sessions#new
#             api_admin_credential_session POST     /api/v1/auth/admin/sign_in(.:format)              devise_token_auth/sessions#create
#     destroy_api_admin_credential_session DELETE   /api/v1/auth/admin/sign_out(.:format)             devise_token_auth/sessions#destroy
#            api_admin_credential_password POST     /api/v1/auth/admin/password(.:format)             devise_token_auth/passwords#create
#        new_api_admin_credential_password GET      /api/v1/auth/admin/password/new(.:format)         devise_token_auth/passwords#new
#       edit_api_admin_credential_password GET      /api/v1/auth/admin/password/edit(.:format)        devise_token_auth/passwords#edit
#                                          PATCH    /api/v1/auth/admin/password(.:format)             devise_token_auth/passwords#update
#                                          PUT      /api/v1/auth/admin/password(.:format)             devise_token_auth/passwords#update
# cancel_api_admin_credential_registration GET      /api/v1/auth/admin/cancel(.:format)               devise_token_auth/registrations#cancel
#        api_admin_credential_registration POST     /api/v1/auth/admin(.:format)                      devise_token_auth/registrations#create
#    new_api_admin_credential_registration GET      /api/v1/auth/admin/sign_up(.:format)              devise_token_auth/registrations#new
#   edit_api_admin_credential_registration GET      /api/v1/auth/admin/edit(.:format)                 devise_token_auth/registrations#edit
#                                          PATCH    /api/v1/auth/admin(.:format)                      devise_token_auth/registrations#update
#                                          PUT      /api/v1/auth/admin(.:format)                      devise_token_auth/registrations#update
#                                          DELETE   /api/v1/auth/admin(.:format)                      devise_token_auth/registrations#destroy
#         api_v1_auth_admin_validate_token GET      /api/v1/auth/admin/validate_token(.:format)       devise_token_auth/token_validations#validate_token
#                api_v1_auth_admin_failure GET      /api/v1/auth/admin/failure(.:format)              devise_token_auth/omniauth_callbacks#omniauth_failure
#                                          GET      /api/v1/auth/admin/:provider/callback(.:format)   devise_token_auth/omniauth_callbacks#omniauth_success
#                                          GET|POST /omniauth/:provider/callback(.:format)            devise_token_auth/omniauth_callbacks#redirect_callbacks
#                                          GET|POST /omniauth/failure(.:format)                       devise_token_auth/omniauth_callbacks#omniauth_failure
#                                          GET      /api/v1/auth/admin/:provider(.:format)            redirect(301)
#                        overview_api_user GET      /api/v1/users/:id/overview(.:format)              api/v1/users#overview
#                                api_users GET      /api/v1/users(.:format)                           api/v1/users#index
#                                          POST     /api/v1/users(.:format)                           api/v1/users#create
#                             new_api_user GET      /api/v1/users/new(.:format)                       api/v1/users#new
#                            edit_api_user GET      /api/v1/users/:id/edit(.:format)                  api/v1/users#edit
#                                 api_user GET      /api/v1/users/:id(.:format)                       api/v1/users#show
#                                          PATCH    /api/v1/users/:id(.:format)                       api/v1/users#update
#                                          PUT      /api/v1/users/:id(.:format)                       api/v1/users#update
#                                          DELETE   /api/v1/users/:id(.:format)                       api/v1/users#destroy
#                          user_api_admins GET      /api/v1/admins/user/:id(.:format)                 api/admins#user
#                               api_admins GET      /api/v1/admins(.:format)                          api/v1/admins#index
#                                          POST     /api/v1/admins(.:format)                          api/v1/admins#create
#                            new_api_admin GET      /api/v1/admins/new(.:format)                      api/v1/admins#new
#                           edit_api_admin GET      /api/v1/admins/:id/edit(.:format)                 api/v1/admins#edit
#                                api_admin GET      /api/v1/admins/:id(.:format)                      api/v1/admins#show
#                                          PATCH    /api/v1/admins/:id(.:format)                      api/v1/admins#update
#                                          PUT      /api/v1/admins/:id(.:format)                      api/v1/admins#update
#                                          DELETE   /api/v1/admins/:id(.:format)                      api/v1/admins#destroy
#                            api_linkedins GET      /api/v1/linkedins(.:format)                       api/v1/linkedins#index
#                                          POST     /api/v1/linkedins(.:format)                       api/v1/linkedins#create
#                         new_api_linkedin GET      /api/v1/linkedins/new(.:format)                   api/v1/linkedins#new
#                        edit_api_linkedin GET      /api/v1/linkedins/:id/edit(.:format)              api/v1/linkedins#edit
#                             api_linkedin GET      /api/v1/linkedins/:id(.:format)                   api/v1/linkedins#show
#                                          PATCH    /api/v1/linkedins/:id(.:format)                   api/v1/linkedins#update
#                                          PUT      /api/v1/linkedins/:id(.:format)                   api/v1/linkedins#update
#                                          DELETE   /api/v1/linkedins/:id(.:format)                   api/v1/linkedins#destroy
#                              api_githubs GET      /api/v1/githubs(.:format)                         api/v1/githubs#index
#                                          POST     /api/v1/githubs(.:format)                         api/v1/githubs#create
#                           new_api_github GET      /api/v1/githubs/new(.:format)                     api/v1/githubs#new
#                          edit_api_github GET      /api/v1/githubs/:id/edit(.:format)                api/v1/githubs#edit
#                               api_github GET      /api/v1/githubs/:id(.:format)                     api/v1/githubs#show
#                                          PATCH    /api/v1/githubs/:id(.:format)                     api/v1/githubs#update
#                                          PUT      /api/v1/githubs/:id(.:format)                     api/v1/githubs#update
#                                          DELETE   /api/v1/githubs/:id(.:format)                     api/v1/githubs#destroy
#                        upload_api_answer POST     /api/v1/answers/:id/upload(.:format)              api/v1/answers#upload
#                                          GET      /api/v1/answers/user/:id(.:format)                api/v1/answers#user
#                                          GET      /api/v1/answers/type/:data_type(.:format)         api/v1/answers#type
#                              api_answers GET      /api/v1/answers(.:format)                         api/v1/answers#index
#                                          POST     /api/v1/answers(.:format)                         api/v1/answers#create
#                           new_api_answer GET      /api/v1/answers/new(.:format)                     api/v1/answers#new
#                          edit_api_answer GET      /api/v1/answers/:id/edit(.:format)                api/v1/answers#edit
#                               api_answer GET      /api/v1/answers/:id(.:format)                     api/v1/answers#show
#                                          PATCH    /api/v1/answers/:id(.:format)                     api/v1/answers#update
#                                          PUT      /api/v1/answers/:id(.:format)                     api/v1/answers#update
#                                          DELETE   /api/v1/answers/:id(.:format)                     api/v1/answers#destroy
#                                          GET      /api/v1/customs/user/:id(.:format)                api/v1/customs#user
#                                          GET      /api/v1/customs/user/:id/type/:datatype(.:format) api/v1/customs#type
#                              api_customs GET      /api/v1/customs(.:format)                         api/customs#index
#                                          POST     /api/v1/customs(.:format)                         api/customs#create
#                           new_api_custom GET      /api/v1/customs/new(.:format)                     api/customs#new
#                          edit_api_custom GET      /api/v1/customs/:id/edit(.:format)                api/customs#edit
#                               api_custom GET      /api/v1/customs/:id(.:format)                     api/customs#show
#                                          PATCH    /api/v1/customs/:id(.:format)                     api/customs#update
#                                          PUT      /api/v1/customs/:id(.:format)                     api/customs#update
#                                          DELETE   /api/v1/customs/:id(.:format)                     api/customs#destroy
#                                          GET      /api/v1/questions/type/:question_type(.:format)   api/v1/questions#type
#                            api_questions GET      /api/v1/questions(.:format)                       api/v1/questions#index
#                                          POST     /api/v1/questions(.:format)                       api/v1/questions#create
#                         new_api_question GET      /api/v1/questions/new(.:format)                   api/v1/questions#new
#                        edit_api_question GET      /api/v1/questions/:id/edit(.:format)              api/v1/questions#edit
#                             api_question GET      /api/v1/questions/:id(.:format)                   api/v1/questions#show
#                                          PATCH    /api/v1/questions/:id(.:format)                   api/v1/questions#update
#                                          PUT      /api/v1/questions/:id(.:format)                   api/v1/questions#update
#                                          DELETE   /api/v1/questions/:id(.:format)                   api/v1/questions#destroy
#                                          GET      /api/v1/awards/user/:id(.:format)                 api/v1/awards#user
#                               api_awards GET      /api/v1/awards(.:format)                          api/v1/awards#index
#                                          POST     /api/v1/awards(.:format)                          api/v1/awards#create
#                            new_api_award GET      /api/v1/awards/new(.:format)                      api/v1/awards#new
#                           edit_api_award GET      /api/v1/awards/:id/edit(.:format)                 api/v1/awards#edit
#                                api_award GET      /api/v1/awards/:id(.:format)                      api/v1/awards#show
#                                          PATCH    /api/v1/awards/:id(.:format)                      api/v1/awards#update
#                                          PUT      /api/v1/awards/:id(.:format)                      api/v1/awards#update
#                                          DELETE   /api/v1/awards/:id(.:format)                      api/v1/awards#destroy
#                                          GET      /api/v1/extracurriculars/user/:id(.:format)       api/v1/extracurriculars#user
#                     api_extracurriculars GET      /api/v1/extracurriculars(.:format)                api/v1/extracurriculars#index
#                                          POST     /api/v1/extracurriculars(.:format)                api/v1/extracurriculars#create
#                  new_api_extracurricular GET      /api/v1/extracurriculars/new(.:format)            api/v1/extracurriculars#new
#                 edit_api_extracurricular GET      /api/v1/extracurriculars/:id/edit(.:format)       api/v1/extracurriculars#edit
#                      api_extracurricular GET      /api/v1/extracurriculars/:id(.:format)            api/v1/extracurriculars#show
#                                          PATCH    /api/v1/extracurriculars/:id(.:format)            api/v1/extracurriculars#update
#                                          PUT      /api/v1/extracurriculars/:id(.:format)            api/v1/extracurriculars#update
#                                          DELETE   /api/v1/extracurriculars/:id(.:format)            api/v1/extracurriculars#destroy
#                                          GET      /api/v1/educations/user/:id(.:format)             api/v1/educations#user
#                           api_educations GET      /api/v1/educations(.:format)                      api/v1/educations#index
#                                          POST     /api/v1/educations(.:format)                      api/v1/educations#create
#                        new_api_education GET      /api/v1/educations/new(.:format)                  api/v1/educations#new
#                       edit_api_education GET      /api/v1/educations/:id/edit(.:format)             api/v1/educations#edit
#                            api_education GET      /api/v1/educations/:id(.:format)                  api/v1/educations#show
#                                          PATCH    /api/v1/educations/:id(.:format)                  api/v1/educations#update
#                                          PUT      /api/v1/educations/:id(.:format)                  api/v1/educations#update
#                                          DELETE   /api/v1/educations/:id(.:format)                  api/v1/educations#destroy
#                                          GET      /api/v1/experiences/user/:id(.:format)            api/v1/experiences#user
#                          api_experiences GET      /api/v1/experiences(.:format)                     api/v1/experiences#index
#                                          POST     /api/v1/experiences(.:format)                     api/v1/experiences#create
#                       new_api_experience GET      /api/v1/experiences/new(.:format)                 api/v1/experiences#new
#                      edit_api_experience GET      /api/v1/experiences/:id/edit(.:format)            api/v1/experiences#edit
#                           api_experience GET      /api/v1/experiences/:id(.:format)                 api/v1/experiences#show
#                                          PATCH    /api/v1/experiences/:id(.:format)                 api/v1/experiences#update
#                                          PUT      /api/v1/experiences/:id(.:format)                 api/v1/experiences#update
#                                          DELETE   /api/v1/experiences/:id(.:format)                 api/v1/experiences#destroy
#

Rails.application.routes.draw do
  devise_for :admin_credentials
  devise_for :user_credentials 

  resources :answers do
    member do
      post 'upload' => 'answers#upload'
    end
    collection do
        get 'user/:id' => 'answers#user'
        get 'type/:data_type' => 'answers#type'
      end
  end

  resources :questions do
    collection do
      get 'type/:question_type' => 'questions#type'
    end
  end

  resources :users do
  	collection do
  	  get 'overview', as: :overview
  	end
  end

  resources :admins do
    member do 
      post '/' => 'admins#update', as: :update
    end
    collection do
      get 'user/:id' => 'admins#user', as: :user
    end
  end

  resources :customs do
    collection do
      get 'user/:id' => 'customs#user'
      get 'user/:id/type/:datatype' => 'customs#type'
    end
  end

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
  
  # root page
  root 'users#index' 

  ## API Routes #####################
  namespace :api do
      scope :v1 do

        # token auth devise features at api/v1/auth
        mount_devise_token_auth_for 'UserCredential', at: 'auth'
        mount_devise_token_auth_for 'AdminCredential', at: 'auth/admin'

        resources :users, controller: 'v1/users' do
        	collection do
        	  get 'overview', as: :overview
        	end
       	end

        resources :admins, controller: 'v1/admins' do
            collection do
              get 'user/:id' => 'admins#user', as: :user
            end
        end
        resources :linkedins, controller: 'v1/linkedins'
        resources :githubs, controller: 'v1/githubs'
        resources :answers, controller: 'v1/answers' do
          member do
            post 'upload' => 'v1/answers#upload'
          end
          collection do
            get 'user/:id' => 'v1/answers#user'
            get 'type/:data_type' => 'v1/answers#type'
          end
        end

        resources :customs do
          collection do
            get 'user/:id' => 'v1/customs#user'
            get 'user/:id/type/:datatype' => 'v1/customs#type'
          end
        end
        
        resources :questions, controller: 'v1/questions' do
          collection do
            get 'type/:question_type' => 'v1/questions#type'
          end
        end

        resources :awards, controller: 'v1/awards' do
          collection do
            get 'user/:id' => 'v1/awards#user'
          end
        end

        #resources :awards, controller: 'v1/awards'

        resources :extracurriculars, controller: 'v1/extracurriculars' do
          collection do
            get 'user/:id' => 'v1/extracurriculars#user'
          end
        end
        resources :educations, controller: 'v1/educations' do
          collection do
            get 'user/:id' => 'v1/educations#user'
          end
        end
        resources :experiences, controller: 'v1/experiences'do
          collection do
            get 'user/:id' => 'v1/experiences#user'
          end
        end
      end
    end

  
  # authenticate do
  #   root to: 'devise/sessions#new'
  # end

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
