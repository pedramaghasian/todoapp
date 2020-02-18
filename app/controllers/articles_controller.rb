class ArticlesController < ApplicationController
  
  def new
    @article=Article.new
  end

  def create  
    @article=Article.new(article_params)
    if @article.save  
      flash[:notic]="Your article created successfully."
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def index  
    @articles=Article.all  
  end

  def show 
    @article=Article.find(params[:id])
  end

  def edit  
    @article=Article.find(params[:id])
  end

  def update  
    @article=Article.find(params[:id])
    if @article.update(article_params)
      flash[:notic]='article updated successfully'
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @article=Article.find(params[:id])
    if @article.destroy  
      flash[:notic]='article deleted'
      redirect_to articles_path
    else
      render 'edit'
    end
  end
  private
  def article_params
    params.require(:article).permit(:title,:about)
  end


end
