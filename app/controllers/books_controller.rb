class BooksController < ApplicationController
  layout "standard-layout"
  
  def index
    
    @books = Recommendation.where(:cat_id => 2).order("cat_id desc, created_at desc").limit(100)
    
    respond_to do |format|
        format.html
        #format.xml { render :xml => @recommendations }
        format.json { render :json => @recommendations }
    end
    
   
    
  end  
  def show
    logger.debug "inside show" + params[:id]
    @currBook = Recommendation.find(params[:id])
    
  end

  def create
    #add book
    @book = Book.new(:name => "Outliers", :author => "Malcolm Gladwell", :imageurl => "http://www.yahoo.com")
    @book.save
    
  end
  
end
