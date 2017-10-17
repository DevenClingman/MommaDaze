module PostsHelper
  def portfolio_img img, type
    if img.model.image?
      img
    elsif type == "image"
      image_generator height: "350", width: "150"
    else
      image_generator height: "350", width: "250"
    end 
  end
end
