class Facility < ApplicationRecord

	belongs_to :hotel, :class_name => "hotel", :foreign_key => "hotel_id"
	belongs_to :room, :class_name => "room", :foreign_key => "room_id"

end
