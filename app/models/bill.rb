class Bill < ApplicationRecord
    has_many :bill_details
    has_many :products, through: :bill_details

    def bill_details_attributes=(bill_attr)
        bill_attr.each do |i, bill_at|
            self.bill_details.build(bill_at)
        end
    end     
    # has_many :bill_details, dependent: :destroy

    # accepts_nested_attributes_for :bill_details,
    #                               allow_destroy: true,
    #                               reject_if: :all_blank
end
    