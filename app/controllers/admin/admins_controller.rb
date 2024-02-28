class Admin::AdminsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_if_admin

  def index
    @users = User.all
    @event_submissions = EventSubmission.all
    @event_submissions_to_validate = @event_submissions.where(reviewed:false)
  end

  private

  def check_if_admin
    unless current_user.is_admin == true
      flash[:danger] = "you are not administrator, please log in."
      redirect_to root_path
    end
  end

end
