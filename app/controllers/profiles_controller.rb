class ProfilesController < ApplicationController
#  before_filter :correct_contractor, only: [:edit, :update, :dashboard]
#  before_filter :owner_logged_in, only: [:new, :create]
#  skip_before_filter :mobile_require_login, :only => [:index, :show]

def index
    @profile = Profile.all
  end

  def new
    @profile = Profile.new
    @title = "Complete Your Profile"
  end

def create
    @profile = Profile.new(params[:profile])
end

end