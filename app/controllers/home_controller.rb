class HomeController < ApplicationController
  def index
    @user = self.current_user
  end
end
