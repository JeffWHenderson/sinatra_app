class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :characters, :type, :race
  end
end
