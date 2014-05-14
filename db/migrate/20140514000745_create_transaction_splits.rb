class CreateTransactionSplits < ActiveRecord::Migration
  def change
    create_table :transaction_splits do |t|
      t.belongs_to :transaction_record, index: true
      t.decimal :amount, precision: 12, scale: 2
      t.string :description

      t.timestamps
    end
  end
end
