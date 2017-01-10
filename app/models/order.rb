class Order < ApplicationRecord
  validates :address, :city, :state, presence: true
  
  belongs_to :listing, optional:true
  belongs_to :buyer, class_name: "User", optional:true
  belongs_to :seller, class_name: "User", optional:true
end
