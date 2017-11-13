class HotelsController < ApplicationController

	before_action :find_hotel, only: [:show, :edit, :update, :destroy]

	def index
		@hotels = Hotel.all.order("created_at ASC")
	end

	def show
		# @hotel = Hotel.where(id: params[:hotel_id]).first
		# @t = Review.where(hotel_id: @hotel)
		# @hotel = Hotel.all
		@hotel = Hotel.find(params[:id])
		@review = Review.all
	end

	def new
		@hotel = current_user.hotels.build
		@categories = Category.all.map{ |c| [c.name, c.id] }
	end

	def create
		@hotel = current_user.hotels.build(hotel_params)
		@hotel.category_id = params[:category_id]

		if @hotel.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		@categories = Category.all.map{ |c| [c.name, c.id] }
	end

	def update
		@hotel.category_id = params[:category_id]

		if @hotel.update(hotel_params)
			redirect_to hotel_path(@hotel)
		else
			render 'edit'
		end
	end

	def destroy
		@hotel.destroy
		redirect_to root_path
	end


	private

	def hotel_params
		params.require(:hotel).permit(:name, :address, :description, :category_id, :hotel_img)
	end

	def find_hotel
		@hotel = Hotel.find(params[:id])
	end

end
