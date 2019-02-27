class RemoveEssentialFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :essential, :boolean
  end
end
