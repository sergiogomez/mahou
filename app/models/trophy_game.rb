class TrophyGame < ActiveRecord::Base
  belongs_to :trophy
  belongs_to :game
end
