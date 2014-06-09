class Api::V1::TransactionSplitsController < ApplicationController
  def index
    @transaction_splits = TransactionSplit.all.user(get_current_user.id)
  end

  def create
  end

  def update
  end

  def delete
  end
end
