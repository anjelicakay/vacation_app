class AddDateToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :date, :string
  end
end
