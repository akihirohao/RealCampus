class TopContollerController < ApplicationController

  def welcome
    
  end

  def select
    
  end

  def move_to_index
     redirect_to action: :index unless user_signed_in?
  end

end
