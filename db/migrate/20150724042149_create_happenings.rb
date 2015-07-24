class CreateHappenings < ActiveRecord::Migration
  def change
    create_table :happenings do |t|
      t.date :date_created
      t.string :user_id
      t.string :title
      t.string :description
      t.string :img_url
      t.string :tag

      t.timestamps
    end
  end
end
