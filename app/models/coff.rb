class Coff < ActiveRecord::Base
  attr_accessible :name, :price, :coff_id, :image
  has_many :orders
  has_many :users, :through => :orders
  accepts_nested_attributes_for :orders

  has_attached_file :image
end
