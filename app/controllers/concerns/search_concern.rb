module SearchConcern
  extend ActiveSupport::Concern

  def searched hsh
     @tag_items = [
                "Poop",
                "Edible",
                "Inedible",
                "Tantrums",
                "TummyTroubles",
                "TasmanianDevils",
                "MischiefMakers",
                "EyeRolls",
                "LittleArtists",
                "Ouch",
                "GrowingPains",
                "Broken-Uhoh",
                "WorthwhilePerks",
                "PottyTraining",
                "KidWins",
                "TryAgainTomorrow"
    ]
    @tags = []
    hsh.values.each do |value|
      @tags << value if @tag_items.include?(value)
    end
  end
end