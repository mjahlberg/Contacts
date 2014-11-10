class ClientsController < ApplicationController
	
	def index
		@clients = Client.all
	end
	
	def show
        @client = Client.find(params[:id])
       	@comment = Comment.new
	end
	
	def new
		@client = Client.new
	end

	def one
		@client = Client.find(params[:client])
	end

	# def new_comment
	# 	@id = params[:client_id]
	# 	@client = client.find(@id)
	# 	@client.comments << Comment.new(params.require(:comment).permit( :comment))

	# 	if @client.save
	# 		redirect_to one_path(:client => @id)
	# 	end
	# end

	def create
		@client = Client.new(params.require(:client).permit(:account, :avatar))
		if @client.save
			redirect_to clients_path
		else
			render 'new'
		end
	end

	def edit
		@client = Client.find(params[:id])
	end

	def update
		@client = Client.find(params[:id])
		if @client.update_attributes(params.require(:client).permit(:account))
			redirect_to clients_path
		else
			render 'edit'
		end
	end

	def destroy
		@client = Client.find(params[:id])
		@client.destroy
		redirect_to clients_path
	end

end
