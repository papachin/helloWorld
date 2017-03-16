class ArticlesController < ApplicationController::Parameters {"title" => "First Article!", "text" => "This is my first article."} permitted: false>
    
    def index
        @articles = Article.all
    end
    
    
    def show
        @article = Article.find(params[:id])
    end


    def new
    end
    
    
    def create
         @article = Article.new(params[:article])

        @article.save
        redirect_to @article
    end
    
    
    private
    def article_params
        params.require(:article).permit(:title, :text)
    end
  
end
