class TransactionSplit < ActiveRecord::Base
  belongs_to :transaction_record
  has_many :pie_piece_transaction_splits
  has_many :pie_pieces, through: :pie_piece_transaction_splits
end
