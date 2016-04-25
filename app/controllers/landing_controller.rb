class LandingController < ApplicationController
  layout :resolve_layout

  def index
    if current_user
      render :editor
    else
      render :main
    end
  end

  private

  def resolve_layout
    current_user ? "editor" : "landing"
  end
end
