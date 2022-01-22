Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
      #READ all -----------------------------
 
  # LISTS ------------------------------------
  resources :lists, only: [:index, :show, :create, :new] do
    resources :bookmarks, only: [:new, :create, :delete] # reviews est dans restaurant
  end

end
