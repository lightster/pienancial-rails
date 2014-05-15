class TransactionRecord < ActiveRecord::Base
  belongs_to :user
  has_many :transaction_splits
end
