class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.date :date
      t.time :time
      t.boolean :played

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
