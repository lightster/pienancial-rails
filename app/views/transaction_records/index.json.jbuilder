json.array!(@transaction_records) do |transaction_record|
  json.extract! transaction_record, :id, :user_id, :transaction_date
  json.url transaction_record_url(transaction_record, format: :json)
end
