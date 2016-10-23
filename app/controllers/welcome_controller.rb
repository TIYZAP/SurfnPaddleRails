class WelcomeController < ApplicationController
  def index
    @post = Post.all.max_by(&:created_at)
    @post2 = Post.all.reject { |post| post == @post }
  end

  def show
    @post = Post.find(params[:id].to_i)
    @post2 = Post.all.reject { |post| post == @post }
  end
end
