RubyTr::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'high_voltage/pages#show', id: 'main', as: :root
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks',
                                    registrations:      'users/registrations',
                                    sessions:           'users/sessions' }
  resources :users, only: [:index, :new, :create, :edit]
end
