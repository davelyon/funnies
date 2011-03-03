class PostsController < ApplicationController
  respond_to :html
  expose :post
  expose(:posts) { Post.all }

  def create
    if post.save
      redirect_to posts_path, notice: "Successfully created post!"
    else
      flash[:alert] = "Post could not be saved"
      respond_with(post)
    end
  end
end