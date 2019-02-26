class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :temperature
      t.string :gender
      t.boolean :essential

      t.timestamps
    end
  end
end
