class MakePiePiecesPieIdNotNull < ActiveRecord::Migration
  def change
    change_column :pie_pieces, :pie_id, :int, :null => false
  end
end
