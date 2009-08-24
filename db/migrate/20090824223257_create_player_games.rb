class CreatePlayerGames < ActiveRecord::Migration
  def self.up
    create_table :player_games do |t|
      t.integer :player_id
      t.integer :game_id

      t.timestamps
    end
  end

  def self.down
    drop_table :player_games
  end
end
