class CreateDiaries < ActiveRecord::Migration

  def change
    create_table :diaries do |t|
      t.string :user_id
      t.string :title
      t.string :date_created
      t.string :entry
      t.string :type
      t.string :img_url
      t.string :tag

      t.timestamps
    end
  end
end
