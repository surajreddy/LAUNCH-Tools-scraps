class MCategoriesController < ApplicationController
  # GET /m_categories
  # GET /m_categories.xml
  def index
    @m_categories = MCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_categories }
    end
  end

  # GET /m_categories/1
  # GET /m_categories/1.xml
  def show
    @m_category = MCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_category }
    end
  end

  # GET /m_categories/new
  # GET /m_categories/new.xml
  def new
    @m_category = MCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_category }
    end
  end

  # GET /m_categories/1/edit
  def edit
    @m_category = MCategory.find(params[:id])
  end

  # POST /m_categories
  # POST /m_categories.xml
  def create
    @m_category = MCategory.new(params[:m_category])

    respond_to do |format|
      if @m_category.save
        format.html { redirect_to(@m_category, :notice => 'MCategory was successfully created.') }
        format.xml  { render :xml => @m_category, :status => :created, :location => @m_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_categories/1
  # PUT /m_categories/1.xml
  def update
    @m_category = MCategory.find(params[:id])

    respond_to do |format|
      if @m_category.update_attributes(params[:m_category])
        format.html { redirect_to(@m_category, :notice => 'MCategory was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_categories/1
  # DELETE /m_categories/1.xml
  def destroy
    @m_category = MCategory.find(params[:id])
    @m_category.destroy

    respond_to do |format|
      format.html { redirect_to(m_categories_url) }
      format.xml  { head :ok }
    end
  end
end
