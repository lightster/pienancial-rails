json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :user_id, :date, :amount, :description
  json.url transaction_url(transaction, format: :json)
end
