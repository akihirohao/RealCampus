Rails.application.routes.draw do

  devise_for :students, controllers: {
  sessions:      'students/sessions',
  passwords:     'students/passwords',
  registrations: 'students/registrations'
}

  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}

  root :to => 'top#index'

  resources :top, only: :index

  resources :user_reservations, except: [:edit, :destroy] do
    collection do
    get 'search'
    end
  end
  resources :student_reservations, except: [:edit, :destroy]

  resources :student_mypages, only: [:index, :create, :show, :update]

end