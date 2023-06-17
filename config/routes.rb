Rails.application.routes.draw do
  namespace :admin do
    # パスとアクション両方にusersをつけたいのでこう書く
    namespace :staffs do
      # devise_forについてわからなくなった時は以下参照
      # https://www.rubydoc.info/github/heartcombo/devise/main/ActionDispatch/Routing/Mapper%3Adevise_for
      devise_for :staffs, path: ''
    end
    root to: 'home#top'
  end

  # パスとアクション両方にusersをつけたいのでこう書く
  namespace :users do
    devise_for :users, path: ''
  end

  # 必要に応じてオーバーライドしたい場合はアクションを書いていく
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
  get 'dashboard' => 'dashboard#index'
  root to: 'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
