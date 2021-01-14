class HomeController < ApplicationController

  def index
    @post = RecentPosts.list
    render json: @post
  end
end