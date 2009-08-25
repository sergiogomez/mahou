class Participation < ActiveRecord::Base
  belongs_to :player
  belongs_to :trophy_game
end
