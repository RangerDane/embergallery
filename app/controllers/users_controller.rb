class UsersController < ApplicationController
  def new
    invite = Invite.find_by_code( userparams[:invite_code] )
    if invite
      @code = userparams[:invite_code] || ""
      puts userparams
      render :new
    else
      flash[:signup] = "Invalid invite code"
      redirect_to root_url
    end
  end

  def userparams
    params.require(:user).permit(:invite_code,:email,:password)
  end
end
