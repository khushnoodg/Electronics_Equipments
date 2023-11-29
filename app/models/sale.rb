class Sale < ApplicationRecord
    has_many :saledetails, dependent: :destroy, inverse_of: :sale
    accepts_nested_attributes_for :saledetails, allow_destroy: true, reject_if: :all_blank  
end
