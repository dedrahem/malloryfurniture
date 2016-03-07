# routes.rb
  Rails.application.routes.draw do
  # get 'inventory/list'
  root 'welcome#index'
  get 'inventory/list' => 'inventory#list'
  get 'inventory/:pid' => 'inventory#detail'


end
