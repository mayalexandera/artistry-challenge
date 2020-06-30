# == Route Map
#
#                    Prefix Verb  URI Pattern                                                                              Controller#Action
#                   artists POST  /artists(.:format)                                                                       artists#create
#                new_artist GET   /artists/new(.:format)                                                                   artists#new
#               edit_artist GET   /artists/:id/edit(.:format)                                                              artists#edit
#                    artist GET   /artists/:id(.:format)                                                                   artists#show
#                           PATCH /artists/:id(.:format)                                                                   artists#update
#                           PUT   /artists/:id(.:format)                                                                   artists#update
#               instruments POST  /instruments(.:format)                                                                   instruments#create
#            new_instrument GET   /instruments/new(.:format)                                                               instruments#new
#           edit_instrument GET   /instruments/:id/edit(.:format)                                                          instruments#edit
#                instrument GET   /instruments/:id(.:format)                                                               instruments#show
#                           PATCH /instruments/:id(.:format)                                                               instruments#update
#                           PUT   /instruments/:id(.:format)                                                               instruments#update
#        rails_service_blob GET   /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET   /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET   /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT   /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST  /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  root 'artists#index'
  resources :artists, only: [:index, :new, :create, :edit, :update, :show]
  resources :instruments, only: [:new, :create, :edit, :update, :show]

  resources :artist_instruments, only: [:new, :create, :show]

  
end
