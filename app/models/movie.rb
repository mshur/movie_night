class Movie < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title, :link, :notes, :vote, :event_id

  belongs_to :event
end
