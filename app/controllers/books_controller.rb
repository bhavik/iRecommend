class BooksController < ApplicationController
  layout "standard-layout"
  
  def index
<<<<<<< HEAD
    
    @books = Recommendation.where(:cat_id => 2).order("cat_id desc, created_at desc").limit(100)
    
    respond_to do |format|
        format.html
        #format.xml { render :xml => @recommendations }
        format.json { render :json => @recommendations }
=======
    logger.debug "inside BOOKS Controller index"
    #@books = Books.order("created_at desc").limit(10)
    @books = Recommendation.where(:cat_id => "1").order("created_at desc").limit(100)
    respond_to do |format|
        format.html
        #format.xml { render :xml => @recommendations }
        format.json { render :json => @books }
>>>>>>> 1b28ff42cfff97e9c401cadae03dfd1cf36135b8
    end
    
   
    
  end  
  def show
<<<<<<< HEAD
    logger.debug "inside show" + params[:id]
    @currBook = Recommendation.find(params[:id])
    
=======
    logger.debug "inside BOOKS Controller SHOW"
    @currBook = Recommendation.where(:id => params[:id])
>>>>>>> 1b28ff42cfff97e9c401cadae03dfd1cf36135b8
  end

  def create
    #add book
    @book = Book.new(:name => "Outliers", :author => "Malcolm Gladwell", :imageurl => "http://www.yahoo.com")
    @book.save
    
  end
  
end
