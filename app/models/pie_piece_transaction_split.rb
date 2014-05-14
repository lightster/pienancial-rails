class PiePieceTransactionSplit < ActiveRecord::Base
  belongs_to :pie
  belongs_to :pie_piece
  belongs_to :transaction_split
end
