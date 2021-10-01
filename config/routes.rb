Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do 
      scope 'teachers' do
        get '/', to: 'teachers#index'   
        get 'show/:id', to: 'teachers#show'
        post 'create', to: 'teachers#create'
        patch 'update/:id', to: 'teachers#update'
        delete 'delete/:id', to: 'teachers#delete'
        get 'my_students/:id', to: 'teachers#my_students'
      end
      scope 'languages' do
        get '/', to: 'languages#index'
        post 'create', to: 'languages#create'
        delete 'delete/:id', to: 'languages#delete'
      end
      scope 'students' do
        get '/', to: 'students#index'   
        get 'show/:id', to: 'students#show'
        post 'create', to: 'students#create'
        patch 'update/:id', to: 'students#update'
        delete 'delete/:teacher_id', to: 'students#delete'
      end
    end
  end
end
