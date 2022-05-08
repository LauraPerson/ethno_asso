class ArticlesController < ApplicationController

  def index
    @articles = policy_scope(Article.all)
  end

  def show 
    @article = Article.find(params[:id])
    authorize @article
  end



  def new
    @article = Article.new
    authorize @article

  end 

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    authorize @article
    @article.save 
    redirect_to article_path(@article)

  end

  private 

  def article_params 
    params.require(:article).permit(:title, :content)
  end 


end
