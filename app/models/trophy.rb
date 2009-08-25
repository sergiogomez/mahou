class Trophy < ActiveRecord::Base
  validates_presence_of :title

  has_many :trophy_games
  has_many :games, :through => :trophy_games

  attr_reader :complete_title

  def complete_title
    return "Trophy \"#{self.title}\""
  end
end
