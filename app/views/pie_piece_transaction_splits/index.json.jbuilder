json.array!(@pie_piece_transaction_splits) do |pie_piece_transaction_split|
  json.extract! pie_piece_transaction_split, :id, :pie_id, :pie_piece_id, :transaction_split_id
  json.url pie_piece_transaction_split_url(pie_piece_transaction_split, format: :json)
end
