json.array!(@pie_pieces) do |pie_piece|
  json.extract! pie_piece, :id, :pie_id, :title
end
