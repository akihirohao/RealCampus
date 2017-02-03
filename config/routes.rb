Rails.application.routes.draw do

  devise_for :students, controllers: {
  sessions:      'students/sessions',
  passwords:     'studets/passwords',
  registrations: 'studets/registrations'
}
devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}


  get 'top'                         => 'top#welcome'
  get 'top/select'                  => 'top#select'
  get 'student_reservation/create'  => 'student_reservation#create'
  get 'student_reservation/new'     => 'student_reservation#new'
  get 'user_reservation/index'      => 'user_reservation#index'
  get 'user_reservation/new'        => 'user_reservation#new'
  get 'user_reservation/search'     => 'user_reservation#search'
  get 'user_reservation/show'       => 'user_reservation#show'

end