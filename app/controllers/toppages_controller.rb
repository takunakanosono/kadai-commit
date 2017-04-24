class ToppagesController < ApplicationController
  def index
    if logged_in?
      redirect_to controller: :users, action: :show, id: session[:user_id]
    end
  end
end
