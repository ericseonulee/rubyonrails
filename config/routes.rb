Rails.application.routes.draw do
  root "menus#index"

  resources :menus do
	resources :menu_items
  end
end
