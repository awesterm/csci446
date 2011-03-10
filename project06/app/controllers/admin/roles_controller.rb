class Admin::RolesController < Admin::AdminController

  before_filter :find_role, :only => [:show, :edit, :update, :destroy]

  USERS_PER_PAGE = 20

  def create
    @role = Role.new(params[:user])
	 respond_to do |fromat|
	 	if @role.save
		  flash[:notice] = 'User sucessfully created.'
		  format.html { redirect_to admin_user_url(@role) }
		  format.xml { render :xml => @role.errors, :status => :unprocessable_entity }
		end
	 end
  end

  def destroy
    respond_to do |formant|
	   if @role.destroy
		  flash[:notice] = 'Role sucessfully destroyed.'
		  format.html { redirect_to admin_user_url(@role) }
		  format.xml { head :ok }
		else
		  flash[:error] = 'Role could not be removed.'
		  format.html { redirect_to admin_user_url(@role) }
		  format.xml { head :unprocessable_entity }
		end
	 end
  end	
  

  def index
    @roles = Role.pagenate(:page => params[:page], :per_page => USERS_PER_PAGE)
    respond_to do |format|
	   format.html
	   format.xml { render :xml => @roles }
	 end
  end  	

  def edit
  end

  def new
    @role = Role.new
	 respond_to do |format|
	   format.html
		format.xml { render :xml => @role }
	 end
  end  	 

  def show
    respond_to do |format|
	   format.html
		format.xml { render :xml => @role }
	 end
  end	 

  def update
    respond_to do |format|
	   if @user.update_attributes(params[:role])
		  flash[:notice] = "Role was sucessfully updated."
		  format.html { redirect_to admin_role_url(@role) }
        format.xml { head :ok }
		else
		  format.html { render :action => "edit" }
		  format.xml { render :xml => @role.errors, :status => :unprocessable_entity }
		end
	 end
  end 

  private
    
	 def find_user
	   @user = User.find(params[:id])
	 end
  end  	 


















	 
end
