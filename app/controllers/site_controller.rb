class SiteController < ApplicationController
  def index
  	@title = 'Welcome To The Society For Justice (ISSJHR)'
  	
  	@last_work = Work.find(:last)
  	
  	@last_event = Event.find(:last)
  	
  	@last_five_articles = Article.find(:all, :limit => 5, :order => "created_at DESC") 
  	
  	render :layout => 'home_layout'
  end

  def about
  	@title = 'Get To Know About ISSHJR'
  	
  	@last_five_articles = Article.find(:all, :limit => 5, :order => "created_at DESC") 
  end

  def contact
  	@title = 'Get To Know About ISSJHR'
  	
  	@last_five_articles = Article.find(:all, :limit => 5, :order => "created_at DESC") 
  end

  def staff
  	@title = 'Management Section of ISSJHR'
  	
  	@last_five_articles = Article.find(:all, :limit => 5, :order => "created_at DESC") 
  end

end
