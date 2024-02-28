class UsersController < ApplicationController
  before_action :authenticate_user!
  # before_action :authorize_admin!

  def show
    @user = current_user
    @user_events = Event.all.where(admin:current_user.id)
    @random_default_avatar = random_default_avatar
  end 



  private

  def random_default_avatar
    default_avatars = ['animal-profil-1.jpg', 'animal-profil-2.jpg', 'animal-profil-3.jpg']
    default_avatars.sample
  end  

  # def authorize_admin!
  #   unless current_user.admin_events.include?(@event)
  #     redirect_to root_path, alert: "Vous n'êtes pas autorisé à effectuer cette action."
  #   end
  # end

end
