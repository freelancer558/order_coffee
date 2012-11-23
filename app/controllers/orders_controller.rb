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

   def destroy
    order = Order.find(params[:id])
    order.destroy

    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end

  def update
  	order = Order.find(params[:id])
  	order.status_id = params[:status]

    respond_to do |format|
     # if order.update_attributes(params[:coff])
     if order.save
        format.html { redirect_to root_path}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

end
