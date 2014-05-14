class CreateTransactionRecords < ActiveRecord::Migration
  def change
    create_table :transaction_records do |t|
      t.belongs_to :user, index: true
      t.date :transaction_date

      t.timestamps
    end
  end
end
