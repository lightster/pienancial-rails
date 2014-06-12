class MakePiePieceTitlesUniquePerPie < ActiveRecord::Migration
  def change
    add_index :pie_pieces, [:pie_id, :title], unique: true
  end
end
