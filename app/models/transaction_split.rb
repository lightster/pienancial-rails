class TransactionSplit < ActiveRecord::Base
  belongs_to :transaction_record
end
