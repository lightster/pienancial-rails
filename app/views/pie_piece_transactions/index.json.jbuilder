json.array!(@pie_piece_transactions) do |pie_piece_transaction|
  json.extract! pie_piece_transaction, :id, :pie_id, :pie_piece_id, :transaction_id
  json.url pie_piece_transaction_url(pie_piece_transaction, format: :json)
end
