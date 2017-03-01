class PostsController < ApplicationController

  def index
    render json: Post.all
  end

  def show
    render json: Post.find(params[:id])
  end

  def index_comments
    @post = Post.find(params[:id])
    unless @post.comments == 0
      render json: @post.comments
    else
      render json: {message: 'Oh, how I wish I could tell thee of thine admirers and thine twice-doubled inquirers! But alas, thou hast naught.'}
    end
  end

end
