class BooksController < ApplicationController
  layout "standard-layout"
  
  def index
    logger.debug "inside BOOKS Controller index"
    #@books = Books.order("created_at desc").limit(10)
    @books = Recommendation.where(:cat_id => "1").order("created_at desc").limit(100)
    respond_to do |format|
        format.html
        #format.xml { render :xml => @recommendations }
        format.json { render :json => @books }
    end
    
  end  
  def show
    logger.debug "inside BOOKS Controller SHOW"
    @currBook = Recommendation.where(:id => params[:id])
  end
  
  def create
    #add book
    @book = Book.new(:name => "Outliers", :author => "Malcolm Gladwell", :imageurl => "http://www.yahoo.com")
    @book.save
    
  end
  
end
