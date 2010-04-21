class MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
  end

  def edit
    
  end
end
