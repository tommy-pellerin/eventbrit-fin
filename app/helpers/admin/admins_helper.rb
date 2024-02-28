module Admin::AdminsHelper
  def check_if_admin
    unless current_user.is_admin == true
      flash[:danger] = "you are not administrator, please log in."
      redirect_to root_path
    end
  end
end
