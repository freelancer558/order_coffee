class Coff < ActiveRecord::Base
  attr_accessible :name, :price, :coff_id
  has_many :orders
  has_many :users, :through => :orders
  accepts_nested_attributes_for :orders
end
