class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :name
      t.string :surname
      t.string :nick

      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
