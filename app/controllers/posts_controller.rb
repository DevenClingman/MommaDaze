class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :users_post?, :toggle_status, :delete_submitted]
  access all: [:show, :index, :destroy, :create, :new], site_admin: :all

  def index
    @posts = Post.order("created_at DESC").approved
  end

  def show
  
  end

  def new
    @post = Post.new
  end

  def edit 
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end 

  def destroy
    if is_admin? || users_post? 
      @post.destroy
      respond_to do |format|
        format.html { redirect_to posts_url, notice: 'Post was successfully deleted.' }
        format.json { head :no_content }
      end
    else
      redirect_to posts_url, notice: 'Access Denied'
    end
  end 

  def toggle_status
    if @post.submitted?
      @post.approved!
    end
    redirect_to blogs_url, notice: 'Post Approved.'
  end

  def submitted
    @submitted_posts = Post.submitted
  end

  def delete_submitted
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_submitted_url, notice: 'Post was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  def set_post
    @post = Post.friendly.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description, :image, :user_id, :tag_list)
  end

  def users_post? 
    current_user.id == @post.user_id
  end

  def is_admin?
    current_user.roles.first == :site_admin
  end
end
