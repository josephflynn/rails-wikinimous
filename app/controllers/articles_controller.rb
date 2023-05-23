class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    # @restaurant = Restaurant.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save

    redirect_to article_path(@article)
  end

  def edit
    # @restaurant = Restaurant.find(params[:id])
  end

  def update
    # @restaurant = Restaurant.find(params[:id])
    @article.update(article_params)

    redirect_to article_path(@article)
  end

  def destroy
    # @restaurant = Restaurant.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
