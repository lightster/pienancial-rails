class MakePieTitlesUniquePerUser < ActiveRecord::Migration
  def change
    add_index :pies, [:user_id, :title], unique: true
  end
end
