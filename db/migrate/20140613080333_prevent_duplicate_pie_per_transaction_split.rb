class PreventDuplicatePiePerTransactionSplit < ActiveRecord::Migration
  def change
    add_index :pie_piece_transaction_splits,
        [:transaction_split_id, :pie_id],
        unique: true,
        name: 'index_pp_ts_transaction_split_pie'
  end
end
