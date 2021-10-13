class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    @articles = Article.all
    @lorem_ipsum = LOREM_IPSUM
    @lorem_gibson = LOREM_GIBSON
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.new(article_params)
    article.save
    redirect_to article_path(article)
  end

  def edit; end

  def update
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to articles_path(@articles)
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
