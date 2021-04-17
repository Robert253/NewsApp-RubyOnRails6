
# Robert Foster
# Student Number : X17140404
# email: Robert253@gmail.com

class HomeController < ApplicationController
  before_action :load_posts, only: :index

# Indexing posts for search bar
  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result
  end

  private

  def load_posts
    @posts = Post.order("created_at desc").limit(6)
  end


end
