class Hotel < ApplicationRecord
	# belongs_to :user, :class_name => "user", :foreign_key => "user_id"
	belongs_to :category, :class_name => "category", :foreign_key => "category_id"
	has_many :reviews
	has_many :rooms
	has_many :facilities
	has_many :galleries

	has_attached_file :hotel_image, :styles => { :hotel_index => "360x265>", :hotel_show => "1010x415>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :hotel_image, :content_type => /\Aimage\/.*\z/

end
