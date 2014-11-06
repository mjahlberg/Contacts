class ContactsController < ApplicationController
	
	def index
		@contacts = Contact.all
	end
	
	def show
        @contact = Contact.find(params[:id])
       	@comment = Comment.new
	end
	
	def new
		@contact = Contact.new
	end

	def one
		@contact = Contact.find(params[:contact])
	end

	def new_comment
		@id = params[:contact_id]
		@contact = Contact.find(@id)
		@contact.comments << Comment.new(params.require(:comment).permit( :comment))
		if @contact.save
			redirect_to one_path(:contact => @id)
		end
	end

	def create
		@contact = Contact.new(params.require(:contact).permit(:name, :company, :meeting_location, :linkedin))
		if @contact.save
			redirect_to contacts_path
		else
			render 'new'
		end
	end

	def edit
		@contact = Contact.find(params[:id])
	end

	def update
		@contact = Contact.find(params[:id])
		if @contact.update_attributes(params.require(:contact).permit(:name, :company, :meeting_location, :linkedin))
			redirect_to contacts_path
		else
			render 'edit'
		end
	end

	def destroy
		@contact = Contact.find(params[:id])
		@contact.destroy
		redirect_to contacts_path
	end

end
