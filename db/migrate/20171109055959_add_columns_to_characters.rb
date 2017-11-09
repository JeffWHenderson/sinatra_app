class AddColumnsToCharacters < ActiveRecord::Migration
  def change
       add_column :characters, :type, :string
       add_column :characters, :description, :string
       add_column :characters, :level, :integer
  end
end
