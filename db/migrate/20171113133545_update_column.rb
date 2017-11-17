class UpdateColumn < ActiveRecord::Migration[5.1]
  def change
  	add_column :todolists, :is_public, :boolean
  end
end
