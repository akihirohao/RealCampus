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
  get 'realcumpus/student_reservation/create'  => 'student_reservation#create'
  get 'realcumpus/student_reservation/new'     => 'student_reservation#new'
  get 'realcumpus/user_reservation/index'      => 'user_reservation#index'
  get 'realcumpus/user_reservation/new'        => 'user_reservation#new'
  get 'realcumpus/user_reservation/search'     => 'user_reservation#search'
  get 'realcumpus/user_reservation/show'       => 'user_reservation#show'

end