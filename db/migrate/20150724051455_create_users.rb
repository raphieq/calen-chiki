class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :income
      t.date :dob
      t.string :about
      t.string :img_url

      t.timestamps
    end
  end
end
