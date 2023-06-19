Rails.application.routes.draw do
  namespace :admin do
    # moduleを渡すとコントローラがmodule/pathとなる
    # https://github.com/heartcombo/devise/blob/ec0674523e7909579a5a008f16fb9fe0c3a71712/lib/devise/mapping.rb#L131
    devise_for :staffs, module: "admin/staffs"
    root to: 'home#top'
  end

  # パスとアクション両方にusersをつけたいのでこう書く
  devise_for :users, module: "users"

  get 'dashboard' => 'dashboard#index'
  root to: 'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
