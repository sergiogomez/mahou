class CreateTrophyGames < ActiveRecord::Migration
  def self.up
    create_table :trophy_games do |t|
      t.integer :trophy_id
      t.integer :game_id

      t.timestamps
    end
  end

  def self.down
    drop_table :trophy_games
  end
end
