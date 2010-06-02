class MQuestionsController < ApplicationController
  # GET /m_questions
  # GET /m_questions.xml
  def index
    @m_questions = MQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_questions }
    end
  end

  # GET /m_questions/1
  # GET /m_questions/1.xml
  def show
    @m_question = MQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_question }
    end
  end

  # GET /m_questions/new
  # GET /m_questions/new.xml
  def new
    @m_question = MQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_question }
    end
  end

  # GET /m_questions/1/edit
  def edit
    @m_question = MQuestion.find(params[:id])
  end

  # POST /m_questions
  # POST /m_questions.xml
  def create
    @m_question = MQuestion.new(params[:m_question])

    respond_to do |format|
      if @m_question.save
        format.html { redirect_to(@m_question, :notice => 'MQuestion was successfully created.') }
        format.xml  { render :xml => @m_question, :status => :created, :location => @m_question }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_questions/1
  # PUT /m_questions/1.xml
  def update
    @m_question = MQuestion.find(params[:id])

    respond_to do |format|
      if @m_question.update_attributes(params[:m_question])
        format.html { redirect_to(@m_question, :notice => 'MQuestion was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_questions/1
  # DELETE /m_questions/1.xml
  def destroy
    @m_question = MQuestion.find(params[:id])
    @m_question.destroy

    respond_to do |format|
      format.html { redirect_to(m_questions_url) }
      format.xml  { head :ok }
    end
  end
end
