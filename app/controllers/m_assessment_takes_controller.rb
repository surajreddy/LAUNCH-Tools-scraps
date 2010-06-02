class MAssessmentTakesController < ApplicationController
  # GET /m_assessment_takes
  # GET /m_assessment_takes.xml
  def index
    @m_assessment_takes = MAssessmentTake.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_assessment_takes }
    end
  end

  # GET /m_assessment_takes/1
  # GET /m_assessment_takes/1.xml
  def show
    @m_assessment_take = MAssessmentTake.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_assessment_take }
    end
  end

  # GET /m_assessment_takes/new
  # GET /m_assessment_takes/new.xml
  def new
    @m_assessment_take = MAssessmentTake.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_assessment_take }
    end
  end

  # GET /m_assessment_takes/1/edit
  def edit
    @m_assessment_take = MAssessmentTake.find(params[:id])
  end

  # POST /m_assessment_takes
  # POST /m_assessment_takes.xml
  def create
    @m_assessment_take = MAssessmentTake.new(params[:m_assessment_take])

    respond_to do |format|
      if @m_assessment_take.save
        format.html { redirect_to(@m_assessment_take, :notice => 'MAssessmentTake was successfully created.') }
        format.xml  { render :xml => @m_assessment_take, :status => :created, :location => @m_assessment_take }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_assessment_take.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_assessment_takes/1
  # PUT /m_assessment_takes/1.xml
  def update
    @m_assessment_take = MAssessmentTake.find(params[:id])

    respond_to do |format|
      if @m_assessment_take.update_attributes(params[:m_assessment_take])
        format.html { redirect_to(@m_assessment_take, :notice => 'MAssessmentTake was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_assessment_take.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_assessment_takes/1
  # DELETE /m_assessment_takes/1.xml
  def destroy
    @m_assessment_take = MAssessmentTake.find(params[:id])
    @m_assessment_take.destroy

    respond_to do |format|
      format.html { redirect_to(m_assessment_takes_url) }
      format.xml  { head :ok }
    end
  end
end
