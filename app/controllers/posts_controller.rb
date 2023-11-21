# app/controllers/posts_controller.rb
class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource
    def index
    @posts = Post.all
    end
  
    def show
    end
  
    def new
      @post = Post.new
    end
  
    def create
      @post = Post.new(post_params)
  
      if @post.save
        redirect_to @post, notice: 'Post was successfully created.'
      else
        render :new
      end
    end
  
    def edit
        @post = Post.find(params[:id])
    end
  
    def update
      if @post.update(post_params)
        redirect_to @post, notice: 'Post was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      authorize! :destroy, @post
      @post.destroy
      redirect_to posts_url, notice: 'Post was successfully destroyed.'
    end
  
    private
  
    def set_post
      @post = Post.find(params[:id])
    end


    rescue_from CanCan::AccessDenied do |exception|
      respond_to do |format|
        format.html { render_error_page(exception) }
        # You can add more formats as needed (e.g., JSON)
      end
    end

    private

    def render_error_page(exception)
      @exception = exception
      render "shared/access_denied", status: :forbidden
      # You can create a shared/access_denied.html.erb file for the error page
    end

  
    def post_params
      params.require(:post).permit(:title, :content, :image)
    end
  end
  