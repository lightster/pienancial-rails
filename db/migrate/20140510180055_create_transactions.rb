class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.belongs_to :user, index: true
      t.date :date
      t.decimal :amount, precision: 12, scale: 2
      t.string :description

      t.timestamps
    end
  end
end
