class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id]) #the @ sign makes variable Public (instance is rails name)
  end

  def index
    @articles = Article.all #the @ sign makes variable Public (instance is rails name)
  end

end
