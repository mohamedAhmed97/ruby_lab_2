class WelcomeController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  def create
    @article = Article.find(params[:article_id])
  end
  def index
  end
  
  
end
