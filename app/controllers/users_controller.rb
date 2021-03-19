class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @work = @user.works.includes(:user)
  end

end
