class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new params[:post]
  	if(@post.user_id != current_user.id)
      redirect_to root_path
    else
      if @post.save
    		redirect_to posts_path
    	else
    		render 'new'
  	  end
    end
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def show
  	@post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])
  	if @post.update_attributes(params[:post])
  		redirect_to post_path(@post.id)
  	else
      if(@post.user_id != current_user.id)
        redirect_to root_path
      else
  		  render 'edit'
      end
  	end
  end

  def destroy
  	Post.find(params[:id]).destroy
  	redirect_to posts_path
  end

end
