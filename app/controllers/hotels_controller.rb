class HotelsController < ApplicationController


	# before_action :find_hotel, only: [:show, :edit, :update, :destroy, :add_review]
	protect_from_forgery :except =>[:update, :destroy, :add_review]
	skip_before_action :verify_authenticity_token

	def index
		@hotels = Hotel.all.order("created_at ASC")
		# @hotels = Hotel.search(params[:id])
	end

	def show
		@hotel = Hotel.find(params[:id])
		@review = Review.where(hotel_id: @hotel)
		unless @review.present?
			@avg_review = 0
		else
	     @avg_review = @review.average(:rating).present? ? @review.average(:rating).round(0) : 0
	    end
		@images = Gallery.where(hotel_id: @hotel)
		# @images = HotelImage.where(hotel_id: @hotel)

		
	end
	def add_review
		
		# @add_rev = Review.new(:rating => params[:rating], :comment => params[:comment], :hotel_id => params[:hotel_id])
		@add_rev = Review.new(review_params)
		
		if @add_rev.save!
			redirect_to :action => 'show', :id => params[:hotel_id]
			flash[:success] = "Review Added"
		else
			redirect_to :action => 'show', :id => params[:hotel_id]
			flash[:danger] = "Sorry review cannot be added"
		end
		
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
	def about
		
	end
	def faq
		
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


	def about
	    @about = Hotel.where(about: true)
	end

	def faq
	    @faq = Hotel.where(faq: true)
	end

	def login_register

 	    @login_register = Hotel.where(login_register: true)
	end



	private

	# def hotel_params
	# 	params.require(:hotel).permit(:name, :address, :description, :category_id, :hotel_img)
	# end
	def review_params
			params.permit(:rating, :comment, :hotel_id)
	end
	# def find_hotel
	# 	@hotel = Hotel.find(params[:id])
	# end

end
