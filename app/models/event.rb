class Event < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :date, :time, :notes
end
