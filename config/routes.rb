Rails.application.routes.draw do
  namespace :admin do
    root to: 'home#top'
  end
  devise_for :users, controllers: {
    # オーバーライドしたいアクションを書いていく
    sessions: 'users/sessions'
  }
  get 'dashboard' => 'dashboard#index'
  root to: 'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
