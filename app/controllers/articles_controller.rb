class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id]) #the @ sign makes variable Public (instance is rails name)
  end

  def index
    @articles = Article.all #the @ sign makes variable Public (instance is rails name)
  end

  def new

  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save
    redirect_to (@article) #shortened path from article_path(@article)
  end

end
