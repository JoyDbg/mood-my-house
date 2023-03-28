class CreateInspirations < ActiveRecord::Migration[7.0]
  def change
    create_table :inspirations do |t|
      t.string :title
      t.string :description
      t.string :brand

      t.timestamps
    end
  end
end
