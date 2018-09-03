Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'list'    => 'file_manager#list'
    end
  end
end
