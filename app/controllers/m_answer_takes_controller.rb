class MAnswerTakesController < ApplicationController
  # GET /m_answer_takes
  # GET /m_answer_takes.xml
  def index
    @m_answer_takes = MAnswerTake.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_answer_takes }
    end
  end

  # GET /m_answer_takes/1
  # GET /m_answer_takes/1.xml
  def show
    @m_answer_take = MAnswerTake.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_answer_take }
    end
  end

  # GET /m_answer_takes/new
  # GET /m_answer_takes/new.xml
  def new
    @m_answer_take = MAnswerTake.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_answer_take }
    end
  end

  # GET /m_answer_takes/1/edit
  def edit
    @m_answer_take = MAnswerTake.find(params[:id])
  end

  # POST /m_answer_takes
  # POST /m_answer_takes.xml
  def create
    @m_answer_take = MAnswerTake.new(params[:m_answer_take])

    respond_to do |format|
      if @m_answer_take.save
        format.html { redirect_to(@m_answer_take, :notice => 'MAnswerTake was successfully created.') }
        format.xml  { render :xml => @m_answer_take, :status => :created, :location => @m_answer_take }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_answer_take.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_answer_takes/1
  # PUT /m_answer_takes/1.xml
  def update
    @m_answer_take = MAnswerTake.find(params[:id])

    respond_to do |format|
      if @m_answer_take.update_attributes(params[:m_answer_take])
        format.html { redirect_to(@m_answer_take, :notice => 'MAnswerTake was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_answer_take.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_answer_takes/1
  # DELETE /m_answer_takes/1.xml
  def destroy
    @m_answer_take = MAnswerTake.find(params[:id])
    @m_answer_take.destroy

    respond_to do |format|
      format.html { redirect_to(m_answer_takes_url) }
      format.xml  { head :ok }
    end
  end
end
