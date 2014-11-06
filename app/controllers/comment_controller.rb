class CommentController < ApplicationController
 
	def new
		@comment = Comment.new
	end


   	def create
   		# @id = params[:id]
  #  		@contact = Contact.all
		# @c = @contact.find(@id)
		@comment = Comment.new(params.require(:comment).permit( :post, :contact_id))
		# raise params.inspect
		# raise params.inspect
		if @comment.save
			redirect_to contact_path(@comment.contact_id)
		end
		# @comment = Comment.new(params.require(:comment).permit(:post))
		# @comment.contact_id = 5
		# @comment.contact_id = @contact
		# if @comment.save
		# 	redirect_to one_path(:contact => @id)
		# end
   end

   def show
        @contact = Contact.find(params[:id])
       	@comment = Comment.new
	end

	def destroy
		@comment = Comment.find(params[:id]).delete
			redirect_to contact_path(@comment.contact_id)
	end

end
