Rails.application.routes.draw do
  scope module: :public do
    resources :customers, only: [:index, :edit, :update, :show]
    # homes
    resources :homes, only: [:top, :about]
      root to: "homes#top"
      get "homes/about" => "homes#about", as: "about"
  end

  devise_for :admin, skip: [:registrations, :passwords], controllers:{
    sessions: "admin/sessions"
  }
  devise_for :customer, skip: [:passwords], controllers:{
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
