Rails.application.routes.draw do
  root "restaurants#index"

  resources :restaurants do
  resources :menus #do
    # resources :menu_items
	#  end
  end
end
