class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_if_admin

  def index
    @users = User.all
  end

  def show
    # @user = User.find(params[:id])
    #lien vers la page profil de l'utilisateur
  end

  def new
    # @user = User.new
    #création via formulaire
  end

  def create
    # user = User.create(past(params))
    # redirect_to admin_root_path(user.id)
    #création via formulaire
  end

  def edit
    @user = User.find(params[:id])
    @user_events = Event.all.where(admin:@user.id)
  end

  def update
    @user = User.find(params[:id])
    @user.update(post_parms)
    redirect_to edit_admin_user_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_root_path
  end

  private

  def check_if_admin
    unless current_user.is_admin == true
      flash[:danger] = "you are not administrator, please log in."
      redirect_to root_path
    end
  end
end
