# app/controllers/bills_controller.rb

  class BillsController < ApplicationController
    before_action :authenticate_user!
    def new
      @bill = Bill.new
      @products = Product.all # Or fetch products based on your specific conditions
      3.times do
      @bill.bill_details.build # Build an empty bill detail for each product
      end
    end
          
  def create
    @bill = Bill.new(bill_params)


    if @bill.save
      redirect_to new_bill_path  
    else
      #@products = Product.all # Make sure to set @products for re-rendering the form
      render :new
    end
  end

  private

  def bill_params
   params.require(:bill).permit(:date, :total_amount, :total_products, bill_details_attributes: [:product_id, :quantity, :price_per_unit, :total_price])
   
  end
end
