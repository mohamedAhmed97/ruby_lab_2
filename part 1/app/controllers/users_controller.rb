class UsersController < ApplicationController
  before_filter :save_login_state, :only => [:new, :create]
  #index
  def index
    @users=User.all()
  end
  #show page    
  def show
    @user = User.find(params[:id])
  end
  #update
  def edit
    @user = User.find(params[:id])
   end
    #update
  def update
    @user = User.find(params[:id])
    
    if @user.update(user_params)
        redirect_to @user
    else
        render 'edit'
    end
   end    
  #new 
  def new
  end
  #create
  def create
    @user=User.new(user_params)
    @user.save
    redirect_to @user
    #render plain: params[:user].inspect
  end
  private
        def user_params
          params.require(:user).permit(:username, :email ,:password)
        end 
end
