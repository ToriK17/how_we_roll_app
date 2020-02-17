class AddsKeysToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :user_id, :integer
    add_column :characters, :campaign_id, :integer
  end
end
