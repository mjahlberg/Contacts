class PhotosController < ApplicationController
	
	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.create(photo_params)
		if @photo.save
			redirect_to events_path
		else
			render 'new'
		end
	end

	def show
		@photo = Photo.find(params[:id])
	end

	def index
		@photos = Photo.all 
	end

	def edit
		@photo = Photo.find(params[:id])
	end

	def update
		@photo = Photo.find(params[:id])
		if @photo.update_attributes(photo_params)
			redirect_to event_path
		else
			render 'edit'
		end
	end

	def destroy
		@photo = Photo.find(params[:id]).delete
			redirect_to events_path
	end

private
	def photo_params
		params.require(:photo).permit(:date)
	end
end
