class CreateBoss < ActiveRecord::Migration[5.2]
  def change
    create_table :bosses do |t|
      t.string :name
      t.integer :difficulty
    end
  end
end
