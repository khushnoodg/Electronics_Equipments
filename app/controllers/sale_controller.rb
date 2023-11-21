# bills_controller.rb
class BillsController < ApplicationController
  before_action :authenticate_user!  
  def new
      @bill = Bill.new
      @products = Product.all
    end
  
    def create
      @bill = Bill.new(bill_params)
  
      if @bill.save
        redirect_to @bill
      else
        render 'new'
      end
    end
  
    private
  
    def bill_params
      params.require(:bill).permit(:date, bill_details_attributes: [:product_id, :quantity, :priceperunit])
    end
  end
  