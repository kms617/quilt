class SessionsController < ApplicationController
  def create
    session[:current_recruiter_id] = @recruiter.id
  end
end
