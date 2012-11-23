class StaticPagesController < ApplicationController
  def home
  	@user = current_user
  	# @orders = Order.where("user_id = ? and status_id = 1", current_user).order("created_at desc")
  	
  	#if params[:history]
  	#	@orders = Order.history
  	#else
  	#	@orders = Order.new_order
  	#end

    @orders_new = Order.new_order.order_desc
    @orders_history = Order.history.order_desc	 
    @orders_cancled = Order.cancel.order_desc  
    @done_cancel = Order.paginate(:page => params[:page]).done_cancel.order_desc 

    @order = Order.new
  end


end
