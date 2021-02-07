class AddBossesToGames < ActiveRecord::Migration[5.2]
  def change
    add_reference :bosses, :game, foreign_key: true
  end
end
