class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.string :user
      t.string :title
      t.string :date
      t.string :body

      t.timestamps
    end
  end
end
