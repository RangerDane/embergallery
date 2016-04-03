class LandingController < ApplicationController
  def index
    render :main
  end

  def subdomain
    render :subdomain
  end
end
