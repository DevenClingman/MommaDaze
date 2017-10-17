module BlogsHelper
  def blog_img img, type
    if img.model.thumb_image?
      img
    else type == "thumb_image"
      image_generator height: "350", width: "250"
    end 
  end
end
