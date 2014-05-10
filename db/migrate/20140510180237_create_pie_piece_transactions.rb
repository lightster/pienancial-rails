class CreatePiePieceTransactions < ActiveRecord::Migration
  def change
    create_table :pie_piece_transactions do |t|
      t.belongs_to :pie, index: true
      t.belongs_to :pie_piece, index: true
      t.belongs_to :transaction, index: true

      t.timestamps
    end
  end
end
