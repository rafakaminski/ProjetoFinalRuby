class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :cod
      t.string :name
      t.string :gender
      t.datetime :birthday

      t.timestamps
    end
  end
end
