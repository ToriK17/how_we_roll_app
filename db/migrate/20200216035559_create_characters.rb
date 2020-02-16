class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :class
      t.integer :level
      t.text :background
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :health
      t.integer :armor_class
      t.integer :initive
      t.integer :speed
      t.text :traits
      t.text :ideals
      t.text :bonds
      t.text :flaws
      t.integer :age
      t.integer :weight
      t.integer :height
      t.string :gender
      t.string :race
      t.string :alignment
    
      t.timestamps
    end
  end
end
