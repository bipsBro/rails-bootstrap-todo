class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.references :todo, foreign_key: true
      t.string :name
      t.boolean :completed

      t.timestamps
    end
  end
end
