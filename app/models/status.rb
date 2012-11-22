class Status < ActiveRecord::Base
  NEW_ORDER_ID = 1
  DONE_ID = 2
  CANCEL_ID = 3
  
  attr_accessible :name
  has_many :orders
end
