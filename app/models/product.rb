class Product < ApplicationRecord
  belongs_to :category
  has_many :bill_details
  has_many :bills, through: :bill_details
end
