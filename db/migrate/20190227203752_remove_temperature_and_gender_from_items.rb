class RemoveTemperatureAndGenderFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :temperature, :string
    remove_column :items, :gender, :string
    add_column :items, :list_id, :integer
  end
end
