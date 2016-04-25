class LandingController < ApplicationController
  layout :resolve_layout

  def index
    if current_user
      redirect_to builder_url
    else
      render :main
    end
  end

  def builder
    if current_user
      render :builder
    else
      redirect_to root_url
    end
  end

  private

  def resolve_layout
    current_user ? "builder" : "landing"
  end
end
