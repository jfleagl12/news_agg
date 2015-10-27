class HomeController < ApplicationController
  def home
      @links = Link.all
  end
  
  def feed
    @blog_articles = BlogArticle.all
    respond_to do |format|
      format.rss { render :layout => false }
    end
  end
end
