class CreateCobrades < ActiveRecord::Migration[5.2]
  def change
    create_table :cobrades do |t|
      t.integer :cod
      t.string :description

      t.timestamps
    end
  end
end
