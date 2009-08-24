class Player < ActiveRecord::Base
  validates_presence_of :name, :nick
end
