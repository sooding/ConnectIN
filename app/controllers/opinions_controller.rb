class OpinionsController < ApplicationController
  # GET /opinions
  # GET /opinions.json
  def index
    @opinions = Opinion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @opinions }
    end
  end

  # GET /opinions/1
  # GET /opinions/1.json
  def show
    redirect_to contractors_search_path
    
  end

  # GET /opinions/new
  # GET /opinions/new.json
  def new
    @opinion = Opinion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @opinion }
    end
  end

  # GET /opinions/1/edit
  def edit
    @opinion = Opinion.find(params[:id])
  end

  # POST /opinions
  # POST /opinions.json
  def create
    @opinion = Opinion.new(params[:opinion])
    
    @opinion.update_attributes(posting_id: params[:type])
   
    redirect_to contractors_search_path

   
   

  end

  # PUT /opinions/1
  # PUT /opinions/1.json
  def update
    @opinion = Opinion.find(params[:id])

    respond_to do |format|
      if @opinion.update_attributes(params[:opinion])
        format.html { redirect_to @opinion, notice: 'Opinion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @opinion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opinions/1
  # DELETE /opinions/1.json
  def destroy
    @opinion = Opinion.find(params[:id])
    @opinion.destroy

    respond_to do |format|
      format.html { redirect_to opinions_url }
      format.json { head :no_content }
    end
  end
end

