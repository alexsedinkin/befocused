class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.text :descr
      t.integer :priority
      t.date :due_date

      t.timestamps
    end
  end
end
