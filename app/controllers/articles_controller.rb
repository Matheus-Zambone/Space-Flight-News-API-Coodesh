class ArticlesController < ApplicationController
  def index
    @articles = Article.order(created_at: :desc)

    render json: @articles
  end
end
