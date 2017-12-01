module HotelsHelper
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def hotel_img img, type
    if img.model.hotel_image? || img.model.thumb_image?
      img
    elsif type == 'thumb'
      image_generator(height: '350', width: '200')
    elsif type == 'main'
      image_generator(height: '600', width: '400')
    end
  end
end