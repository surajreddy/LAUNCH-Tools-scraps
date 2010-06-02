class MAnswersController < ApplicationController
  # GET /m_answers
  # GET /m_answers.xml
  def index
    @m_answers = MAnswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_answers }
    end
  end

  # GET /m_answers/1
  # GET /m_answers/1.xml
  def show
    @m_answer = MAnswer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_answer }
    end
  end

  # GET /m_answers/new
  # GET /m_answers/new.xml
  def new
    @m_answer = MAnswer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_answer }
    end
  end

  # GET /m_answers/1/edit
  def edit
    @m_answer = MAnswer.find(params[:id])
  end

  # POST /m_answers
  # POST /m_answers.xml
  def create
    @m_answer = MAnswer.new(params[:m_answer])

    respond_to do |format|
      if @m_answer.save
        format.html { redirect_to(@m_answer, :notice => 'MAnswer was successfully created.') }
        format.xml  { render :xml => @m_answer, :status => :created, :location => @m_answer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_answers/1
  # PUT /m_answers/1.xml
  def update
    @m_answer = MAnswer.find(params[:id])

    respond_to do |format|
      if @m_answer.update_attributes(params[:m_answer])
        format.html { redirect_to(@m_answer, :notice => 'MAnswer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_answers/1
  # DELETE /m_answers/1.xml
  def destroy
    @m_answer = MAnswer.find(params[:id])
    @m_answer.destroy

    respond_to do |format|
      format.html { redirect_to(m_answers_url) }
      format.xml  { head :ok }
    end
  end
end
