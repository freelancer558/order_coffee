class StaticPagesController < ApplicationController
  def home
  	@user = current_user
    @orders_new = Order.new_order.order_desc
    @orders_history = Order.history.order_desc	 
    @orders_cancled = Order.cancel.order_desc  
    @order = Order.new
  end

def order_history
   @done_cancel = Order.paginate(:page => params[:page]).done_cancel.order_desc 
end

end
