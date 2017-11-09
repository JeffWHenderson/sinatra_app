class CreateCharactersTable < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :strength
      t.integer :intelligence
      t.integer :dexterity
      t.integer :wisdom
      t.integer :charisma
      t.integer :constitution
      t.integer :user_id
    end
  end
end
