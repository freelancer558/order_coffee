class OrdersController < ApplicationController
	
	def create
		@order = Order.new(params[:order])
		@order.user_id = current_user.id 
		@order.status_id = 1 #default

		flash[:notice] = 'Order successfully updated.'

	    # respond_to do |format|
	     if @order.save
	       redirect_to root_path
	     else
	       format.html { render action: "new" }
	       format.json { render json: @order.errors, status: :unprocessable_entity }
	     end
	end

	def new		
		@order = Order.new
		respond_to do |format|
     		 format.html # index.html.erb
      		format.json { render json: @coffs }
    	end
	end

	def show 		
		redirect_to root_path
	end

	def index

		@orders = Order.history.pao 
		# if params[:history]
		# @orders = Order.new_order.pao

		#Post.where('id > 10').limit(20).order('id desc').only(:order, :where)
	end
end
