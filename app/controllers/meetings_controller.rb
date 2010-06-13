class MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
  end

  def view(meeting_name)
    @meeting = Meeting.find_by_url_friendly_title(meeting_name)
  end
  
  def create
    @meeting = Meeting.new(params[:meeting])
    convert_title_to_url_friendly_title(@meeting)
    if @meeting.save
      redirect_to meetings_path
    else
      render :new, :object => @meeting
    end
  end

  def edit
    @meeting = Meeting.find(params[:id])    
  end

  def update
    @meeting = Meeting.find(params[:id])   
    if @meeting.update_attributes(params[:meeting])
      convert_title_to_url_friendly_title(@meeting)
      @meeting.save
      redirect_to meetings_path
    else
      render :edit, :id => @meeting.id
    end
  end

  def convert_title_to_url_friendly_title(meeting)
    meeting.url_friendly_title = meeting.title.gsub(/\s/, "_").downcase
  end
end
