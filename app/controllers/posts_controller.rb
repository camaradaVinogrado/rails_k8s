class PostsController < ApplicationController
  def index
    render json: JsonPlaceholder.posts
  end
end
