class GalleryController < ApplicationController
  layout 'gallery'
  def show
    @gallery = Gallery.find_by_subdomain( request.subdomain ) || Gallery.find_by_subdomain( params[:subdomain] )
    render :notfound unless @gallery
  end
end
