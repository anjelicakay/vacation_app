class AddBooleanToItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :essential, :boolean, default: false
  end
end
