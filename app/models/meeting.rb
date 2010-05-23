class Meeting
  include MongoMapper::Document

  key :title, String
  key :meeting_date, Date
  key :host_company, String
  key :address, String
  key :presenter, String
  key :description, String
  timestamps!
end 
