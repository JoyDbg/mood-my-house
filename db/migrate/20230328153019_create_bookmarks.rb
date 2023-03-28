class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.string :inspiration_id
      t.string :moodboard_id
      t.string :comment

      t.timestamps
    end
  end
end
