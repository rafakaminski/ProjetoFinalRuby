class CreateOccurrences < ActiveRecord::Migration[5.2]
  def change
    create_table :occurrences do |t|
      t.integer :cod
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
