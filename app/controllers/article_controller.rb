class ArticleController < ApplicationController
 
	def new
		@article = Article.new
	end


   	def create
   		# @id = params[:id]
  		# @contact = Contact.all
		# @c = @contact.find(@id)
		@article = Article.new(params.require(:article).permit( :account, :client_id))
		# raise params.inspect
		# raise params.inspect
		if @article.save
			redirect_to client_path(@article.client_id)
		end
		# @comment = Comment.new(params.require(:comment).permit(:post))
		# @comment.contact_id = 5
		# @comment.contact_id = @contact
		# if @comment.save
		# 	redirect_to one_path(:contact => @id)
		# end
   end

   def show
        @client = Client.find(params[:id])
       	@article = Article.new
	end

	def destroy
		@article = Article.find(params[:id]).delete
			redirect_to client_path(@article.clien_id)
	end

end

