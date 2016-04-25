class SessionsController < ApplicationController
  layout 'landing'

  def new
    @autofill_email = params[:user] ? userparams[:email] || "" : ""
    render :new
  end

  def destroy
    sesh = Session.find_by_token( session[:session_token] )
    sesh.destroy if sesh
    redirect_to root_url
  end

  def create
    @autofill_email = userparams[:email] || ""
    user = User.find_by_credentials( userparams )
    if user
      sesh = Session.create( user_id: user.id, ip_address: request.remote_ip )
      session[:session_token] = sesh.token
      redirect_to root_url
    else
      flash.now[:signin] = "Oops! No user matching such credentials."
      render :new
    end
  end

  def userparams
    params.require(:user).permit( :email, :password )
  end
end
