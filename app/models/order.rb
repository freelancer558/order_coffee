class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :coff
  belongs_to :status

  scope :new_order, where(:status_id => 1)
  scope :history, where(:status_id => 2)
  scope :cancel, where(:status_id => 3)
  scope :order_desc, order("created_at desc")

  attr_accessible :comment, :coff_id, :user_id, :status_id
end
