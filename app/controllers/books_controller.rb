class BooksController < ApplicationController
  layout "standard-layout"
  
  def index
    logger.debug "inside Book INDEX" 
    @books = Recommendation.where(:cat_id => 2).order("cat_id desc, created_at desc").limit(100)
    respond_to do |format|
        format.html
        #format.xml { render :xml => @books }
        format.json { render :json => @books }
    end
  end  
  
  def getCategories
    logger.debug "INSIDE GET CATEGORIES"
    @categories = Category.order("name desc, created_at desc").limit(100)
    respond_to do |format|
        format.json { render :json => @categories }
    end
  end

  def getAllBooks
    logger.debug "inside Get All Books" 
    @books = Recommendation.where(:cat_id => '2').order("cat_id desc, created_at desc").limit(100)
    respond_to do |format|
        format.html
        #format.xml { render :xml => @books }
        format.json { render :json => @books }
    end
  end
  
  def show
    logger.debug "inside SHOWs" + params[:id]
    #@currBook = Recommendation.find(params[:id])
    @currBook = Recommendation.where(:id => params[:id])
    respond_to do |format|
        format.html
        #format.xml { render :xml => @books }
        format.json { render :json => @books }
    end
  end

  def create
    #add book
    @book = Book.new(:name => "Outliers", :author => "Malcolm Gladwell", :imageurl => "http://www.yahoo.com")
    @book.save    
  end
end
