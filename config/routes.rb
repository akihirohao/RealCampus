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

  get 'realcumpus'                         => 'top#index'
  get 'realcumpus/top/select'                  => 'top#select'
  get 'realcumpus/student_reservation/create'  => 'student_reservations#create'
  get 'realcumpus/student_reservation/new'     => 'student_reservations#new'
  get 'realcumpus/user_reservation/index'      => 'user_reservations#index'
  get 'realcumpus/user_reservation/new'        => 'user_reservations#new'
  get 'realcumpus/user_reservation/search'     => 'user_reservations#search'
  get 'realcumpus/user_reservation/show'       => 'user_reservations#show'

end