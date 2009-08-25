class CreateParticipations < ActiveRecord::Migration
  def self.up
    create_table :participations do |t|
      t.integer :trophy_game_id
      t.integer :player_id

      t.timestamps
    end
  end

  def self.down
    drop_table :participations
  end
end
