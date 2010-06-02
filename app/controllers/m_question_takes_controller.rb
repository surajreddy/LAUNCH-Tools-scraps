class MQuestionTakesController < ApplicationController
  # GET /m_question_takes
  # GET /m_question_takes.xml
  def index
    @m_question_takes = MQuestionTake.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_question_takes }
    end
  end

  # GET /m_question_takes/1
  # GET /m_question_takes/1.xml
  def show
    @m_question_take = MQuestionTake.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_question_take }
    end
  end

  # GET /m_question_takes/new
  # GET /m_question_takes/new.xml
  def new
    @m_question_take = MQuestionTake.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_question_take }
    end
  end

  # GET /m_question_takes/1/edit
  def edit
    @m_question_take = MQuestionTake.find(params[:id])
  end

  # POST /m_question_takes
  # POST /m_question_takes.xml
  def create
    @m_question_take = MQuestionTake.new(params[:m_question_take])

    respond_to do |format|
      if @m_question_take.save
        format.html { redirect_to(@m_question_take, :notice => 'MQuestionTake was successfully created.') }
        format.xml  { render :xml => @m_question_take, :status => :created, :location => @m_question_take }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_question_take.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_question_takes/1
  # PUT /m_question_takes/1.xml
  def update
    @m_question_take = MQuestionTake.find(params[:id])

    respond_to do |format|
      if @m_question_take.update_attributes(params[:m_question_take])
        format.html { redirect_to(@m_question_take, :notice => 'MQuestionTake was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_question_take.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_question_takes/1
  # DELETE /m_question_takes/1.xml
  def destroy
    @m_question_take = MQuestionTake.find(params[:id])
    @m_question_take.destroy

    respond_to do |format|
      format.html { redirect_to(m_question_takes_url) }
      format.xml  { head :ok }
    end
  end
end
