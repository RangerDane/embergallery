class LandingController < ApplicationController
  def index
    render :main
  end

  def signup
    flash[:signup] = "Invalid invite code"
    redirect_to root_url
  end

  def signin
    flash[:signin] = "No user found matching credentials"
    redirect_to root_url
  end
end
