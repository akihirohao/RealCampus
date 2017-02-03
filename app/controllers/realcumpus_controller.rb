class RealcumpusController < ApplicationController

  def index
    
  end

  def input
    
  end

  def select
    
  end

  def confirmation
    
  end

  def show
    
  end

  def shift
    
  end

  def wait
    
  end

  def move_to_index
     redirect_to action: :index unless user_signed_in?
  end

end
