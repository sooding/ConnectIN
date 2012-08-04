class SignupsController < ApplicationController
  def index
    @signup = Signup.new

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /signups/new
  # GET /signups/new.json
  def new
    @signup = Signup.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # POST /signups
  def create
    @signup = Signup.new(params[:signup])

    respond_to do |format|
      if @signup.save
        format.html
        # todo - actually properly redirect to main page with flash
      else
        format.html { render action: "index" }
      end
    end
  end

end