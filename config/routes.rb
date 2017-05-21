RubyTr::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'high_voltage/pages#show', id: 'main', as: :root
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks',
                                    registrations:      'users/registrations',
                                    sessions:           'users/sessions' }
  resources :users, only: [:index, :new, :create, :edit]
  resources :companies, only: [:index, :new, :create]

  notify_to :admin_users, with_devise: :admin_users

end
