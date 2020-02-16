class AddChangesToCharacters < ActiveRecord::Migration[6.0]
  def change
    rename_column :characters, :initive, :initiative
  end
end
