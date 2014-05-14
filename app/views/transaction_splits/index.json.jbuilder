json.array!(@transaction_splits) do |transaction_split|
  json.extract! transaction_split, :id, :transaction_record_id, :amount, :description
  json.url transaction_split_url(transaction_split, format: :json)
end
