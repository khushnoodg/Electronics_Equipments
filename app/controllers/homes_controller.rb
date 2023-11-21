class HomesController < ApplicationController
  before_action :authenticate_user!
    def index
        @store_name = "Ghufar Electronic Equipment"  
        @description = "Welcome to Tech Haven, your one-stop shop for the latest electronic equipment. We offer a wide range of products, including smartphones, laptops, cameras, and much more. Explore our collection and experience the future of technology today!"
      end
end
