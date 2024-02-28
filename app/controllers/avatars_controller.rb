class AvatarsController < ApplicationController
  def create
    puts "$"*50
    puts params
    puts "Attachement de avatar à user encours "
    puts "$"*50    
    @user = User.find(params[:user_id])
    @user.avatar.attach(params[:avatar])
    redirect_to(user_path(@user))
    
  end

  def destroy
    puts "$"*50
    puts params
    puts "Suppression de avatar à user encours "
    puts "$"*50    
    @user = User.find(params[:user_id])
    @user.avatar.purge
    redirect_to(user_path(@user), notice: "Votre photo a été supprimée avec succès.")
  end
end
