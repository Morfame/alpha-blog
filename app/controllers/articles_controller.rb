class ArticlesController < ApplicationController
  def show
    #binding.break
    @article = Article.find(params[:id]) #the @ sign makes variable Public (instance is rails name)
  end
end
