Rails.application.routes.draw do
  devise_for :users

  get 'realcumpus'     => 'realcumpus#index'
  get 'realcumpus/input' => 'realcumpus#input'
  get 'realcumpus/select' => 'realcumpus#select'
  get 'realcumpus/confirmation' => 'realcumpus#confirmation'
  get 'realcumpus/show' => 'realcumpus#show'
  get 'realcumpus/shift' => 'realcumpus#shift'
  get 'realcumpus/wait' => 'realcumpus#wait'

end