class MAssessmentsController < ApplicationController
  # GET /m_assessments
  # GET /m_assessments.xml
  def index
    @m_assessments = MAssessment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_assessments }
    end
  end

  # GET /m_assessments/1
  # GET /m_assessments/1.xml
  def show
    @m_assessment = MAssessment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_assessment }
    end
  end

  # GET /m_assessments/new
  # GET /m_assessments/new.xml
  def new
    @m_assessment = MAssessment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_assessment }
    end
  end

  # GET /m_assessments/1/edit
  def edit
    @m_assessment = MAssessment.find(params[:id])
  end

  # POST /m_assessments
  # POST /m_assessments.xml
  def create
    @m_assessment = MAssessment.new(params[:m_assessment])

    respond_to do |format|
      if @m_assessment.save
        format.html { redirect_to(@m_assessment, :notice => 'MAssessment was successfully created.') }
        format.xml  { render :xml => @m_assessment, :status => :created, :location => @m_assessment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_assessment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_assessments/1
  # PUT /m_assessments/1.xml
  def update
    @m_assessment = MAssessment.find(params[:id])

    respond_to do |format|
      if @m_assessment.update_attributes(params[:m_assessment])
        format.html { redirect_to(@m_assessment, :notice => 'MAssessment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_assessment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_assessments/1
  # DELETE /m_assessments/1.xml
  def destroy
    @m_assessment = MAssessment.find(params[:id])
    @m_assessment.destroy

    respond_to do |format|
      format.html { redirect_to(m_assessments_url) }
      format.xml  { head :ok }
    end
  end
end
