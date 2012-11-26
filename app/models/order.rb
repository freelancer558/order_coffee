class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :coff
  belongs_to :status

  self.per_page = 10

  scope :new_order, where(:status_id => Status::NEW_ORDER_ID)
  scope :history, where(:status_id => Status::DONE_ID)
  scope :cancel, where(:status_id => Status::CANCEL_ID)
  scope :done_cancel, where("status_id <> ?", Status::NEW_ORDER_ID)
  scope :order_desc, order("created_at desc")

  

  attr_accessible :comment, :coff_id, :user_id, :status_id
end
