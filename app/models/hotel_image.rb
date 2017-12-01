class HotelImage < ApplicationRecord
	
	belongs_to :hotel, :class_name => "hotel", :foreign_key => "hotel_id"
end
