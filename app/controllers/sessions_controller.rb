class SessionsController < ApplicationController
  def create
    @user = User.where(uid: auth_hash[:uid], provider: auth_hash[:provider]).first_or_create
    self.current_user = @user
    redirect_to '/'
  end

  def destroy
    self.current_user = nil
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
