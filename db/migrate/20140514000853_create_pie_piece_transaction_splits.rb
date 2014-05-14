class CreatePiePieceTransactionSplits < ActiveRecord::Migration
  def change
    create_table :pie_piece_transaction_splits do |t|
      t.belongs_to :pie, index: true
      t.belongs_to :pie_piece, index: true
      t.belongs_to :transaction_split, index: true

      t.timestamps
    end
  end
end
