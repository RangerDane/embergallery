class UsersController < ApplicationController
  layout 'landing'
  def new
    render :new
  end

  def create
    @autofill_email = userparams[:email] || ""
    invite = Invite.find_by_code( inviteparams[:code] )
    puts invite
    puts "helllo"
    if invite && invite.uses > 0
      # create user!
      # flash.now[:signup] = "Invite code is correct! :D!"
      user = User.create( userparams );
      render :new
    else
      flash.now[:signup] = "Invalid invite code. Sorry!"
      render :new
    end
  end

  def userparams
    params.require(:user).permit(:email,:password)
  end

  def inviteparams
    params.require(:invite).permit(:code)
  end
end
