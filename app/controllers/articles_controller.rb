class ArticlesController < ApplicationController
  def index
    @articles = Article.page(params[:page]).per(params[:page_size])

    render json: @articles
  end

  def show
    @article = Article.find params[:id]

    render json: @article
  end

  def create
    @article = Article.new article_params

    if @article.save
      render json: @article, status: :created
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  def update
    @article = Article.find params[:id]

    if @article.update article_params
      render json: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find params[:id]
    @article.destroy

    head :ok
  end

  private

  def article_params
    params.permit(:featured, :title, :url, :imageUrl, :newsSite, :summary, :publishedAt)
  end
end
