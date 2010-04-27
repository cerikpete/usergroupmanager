class MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
  end

  def edit
    @meeting = Meeting.find(params[:id])    
  end

  def update
    @meeting = Meeting.find(params[:id])   
    if @meeting.update_attributes(params[:meeting])
      redirect_to meetings_path
    else
      render :edit, :id => @meeting.id
    end
  end
end
