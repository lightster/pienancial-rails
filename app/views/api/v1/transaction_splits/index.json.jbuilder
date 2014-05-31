json.array!(@transaction_splits) do |transaction_split|
  json.extract! transaction_split, :amount, :description
end
