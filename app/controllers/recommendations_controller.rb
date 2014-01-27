class RecommendationsController < ApplicationController
  layout "standard-layout"
  
  def index
    logger.debug "inside index"
    @recommendations = Recommendation.order("cat_id desc, created_at desc").limit(100)
    respond_to do |format|
        format.html
        #format.xml { render :xml => @recommendations }
        format.json { render :json => @recommendations }
    end
  end  

  def getAllRecommendations
    logger.debug "inside index"
    @recommendations = Recommendation.order("cat_id desc, created_at desc").limit(100)
    respond_to do |format|
        #format.html
        #format.xml { render :xml => @recommendations }
        format.json { render :json => @recommendations }
    end
  end
  
  def getCategories
    logger.debug "INSIDE GET CATEGORIES"
    @categories = Category.order("name desc, created_at desc").limit(100)
    respond_to do |format|
        format.json { render :json => @categories }
    end
  end
  def show
    logger.debug "inside Recommendation Show"
    #@recommendations = Recommendation.order("cat_id desc, created_at desc").limit(100)
    @currRec = Recommendation.where(:id => params[:id])
    
    respond_to do |format|
        format.html
        #format.xml { render :xml => @recommendations }
        #format.json { render :json => @recommendations }
    end
  end
  
  
  def findByCatId 
    logger.debug "inside movies"
    @recommendations = Recommendation.where(:cat_id => params[:catId]).order("cat_id desc, created_at desc").limit(100)
    respond_to do |format|
        #format.html
        #format.xml { render :xml => @recommendations }
        format.json { render :json => @recommendations }
    end
  end
  
   def findById 
    logger.debug "inside movies"
    @recommendations = Recommendation.where(:id => params[:id]).order("id desc").limit(100)
    respond_to do |format|
        #format.html
        #format.xml { render :xml => @recommendations }
        format.json { render :json => @recommendations }
    end
  end


  def create
    #add recommendations
    @recommendation = Recommendation.new(:name => "Blink", :info => "Malcolm Gladwell", :image_url => "http://www.google.com", :cat_id => 1)
    @recommendation.save!
    
  end
  
  def add_recommendation 
    #logger.debug "inside addRecommendation"
    #params.each do |key,value|
    #  logger.debug "Param #{key}: #{value}"
    #end
    logger.debug "inside add recommendation"        
    @recommendation = Recommendation.new(:name => params[:name], :info => params[:info], :image_url => params[:imageurl], :cat_id => params[:catId]) 
    @recommendation.save

    respond_to do |format|
      if @recommendation.save
        format.json {render :json => @recommendations}
      else
        format.json {render :json => @recommendation.errors}
      end
    end
  end
  
  def recommendation_by_user
     logger.debug "inside recommendation_by_user"
     #get user id from parameter
     #change query to include only recommendation by this specific user
      @recommendations = Recommendation.limit(100)
      respond_to do |format|
        format.html
          format.xml { render :xml => @recommendations }
          format.json { render :json => @recommendations }
      end
    
  end
  
  
end