module ApplicationHelper
  def auth_links
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path) + 
      "<br>".html_safe +
      (link_to "Login", user_session_path)
    else
      link_to "Logout", destroy_user_session_path, method: :delete
    end 
  end

  def copyright_generator
    ClingmanViewTool::Renderer.copyright 'Deven Clingman', 'All rights reserved'
  end
end


