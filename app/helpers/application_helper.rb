module ApplicationHelper

  def tag_items
    @tag_items = {
                poop: "Poop",
                edible: "Edible",
                inedible: "Inedible",
                tantrums: "Tantrums",
                tummy_troubles: "TummyTroubles",
                tasmanian_devils: "TasmanianDevils",
                mischief_makers: "MischiefMakers",
                eye_rolls: "EyeRolls",
                little_artists: "LittleArtists",
                ouch: "Ouch",
                growing_pains: "GrowingPains",
                broken_uhoh: "Broken-Uhoh",
                worthwhile_perks: "WorthwhilePerks",
                potty_training: "PottyTraining",
                kid_wins: "KidWins",
                try_again_tomorrow: "TryAgainTomorrow"
    }
  end

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

  def image_generator(height:, width:)
    "http://placehold.it/#{height}X#{width}"
  end  
end


