class TrophyGame < ActiveRecord::Base
  belongs_to :trophy
  belongs_to :game

  has_many :participations
  has_many :players, :through => :participations
end
