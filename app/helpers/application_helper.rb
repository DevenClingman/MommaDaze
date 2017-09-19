module ApplicationHelper
  def auth_links
    if user_signed_in?
      link_to "Logout", destroy_user_session_path, method: :delete
    else
      (link_to "Register", new_user_registration_path) + (link_to "Login", user_session_path)
    end 
  end
end
