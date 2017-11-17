class CreateTodolists < ActiveRecord::Migration[5.1]
  def change
    create_table :todolists do |t|
      t.string :name 
      t.date :date
      t.text :note

      t.timestamps
    end
  end
end
