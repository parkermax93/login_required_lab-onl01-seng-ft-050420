class SessionsController < ApplicationController

  def new
  end

  def create
      if params[:name].blank?
          redirect_to new_session_path, alert: "Must enter name."
      else
          session[:name] = params[:name]
          redirect_to sessions_path
      end
  end

  def index
  end

  def destroy
      session.clear
      redirect_to new_session_path
  end

end