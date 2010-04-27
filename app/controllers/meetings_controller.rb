class MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
  end

  def edit
    @meeting = Meeting.find(params[:id])    
  end
end
