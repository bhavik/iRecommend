class BooksController < ApplicationController
  layout "standard-layout"
  
  def index
    @books = Books.order("created_at desc").limit(10)
    @books.each do |book|
      if stale?(:last_modified => book.updated_at)
        render json: @book
      end
    end
    
  end  
  def show
    @currBook = Books.where(:id => params[:id])
  end
  
  def create
    #add book
    @book = Book.new(:name => "Outliers", :author => "Malcolm Gladwell", :imageurl => "http://www.yahoo.com")
    @book.save
    
  end
  
end
