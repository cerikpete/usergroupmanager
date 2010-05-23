class Meeting
  include MongoMapper::Document

  key :title, String
  key :meeting_date, Date
  key :location, String
  key :presenter, String
  key :description, String
  timestamps!
end 
