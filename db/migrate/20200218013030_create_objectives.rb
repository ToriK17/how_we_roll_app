class CreateObjectives < ActiveRecord::Migration[6.0]
  def change
    create_table :objectives do |t|
      t.string :name
      t.text :description
      t.integer :priority
      t.datetime :date
      t.boolean :complete
      t.integer :duration

      t.timestamps
    end
  end
end
