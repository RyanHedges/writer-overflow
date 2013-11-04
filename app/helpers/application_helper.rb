module ApplicationHelper

  def create_user_session(user_object)
    session[:user_id] = user_object.id
  end

end
