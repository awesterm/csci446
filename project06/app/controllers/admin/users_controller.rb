class Admin::UsersController < Admin::AdminController

  before_filter :find_user, :only => [:show, :edit, :update, :destroy]

  USERS_PER_PAGE = 20

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated profile."
      redirect_to root_url
    else
      render :action => 'edit'
    end
  end
end
