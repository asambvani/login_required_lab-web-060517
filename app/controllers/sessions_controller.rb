class SessionsController < ApplicationController



  def current_user
  end

  def new
    if !logged_in
      redirect_to login_path
    else
      redirect_to '/welcome'
    end
  end

  def create
    session[:name] = params[:name] if params[:name]
    if !logged_in
      redirect_to login_path
    else
      redirect_to '/welcome'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to root_url
  end

end
