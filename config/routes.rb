Rails.application.routes.draw do

  namespace :public do
    get 'cusutomers/index'
    get 'cusutomers/show'
    get 'cusutomers/edit'
  end
  scope module: :public do
    # homes
    resources :homes, only: [:top, :about]
      root to: "homes#top"
      get "homes/about" => "homes#about", as: "about"
    resources :customers, only: [:index, :show, :edit, :update]
  end

  devise_for :admin, skip: [:registrations, :passwords], controllers:{
    sessions: "admin/sessions"
  }
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
