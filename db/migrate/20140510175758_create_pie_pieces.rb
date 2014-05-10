class CreatePiePieces < ActiveRecord::Migration
  def change
    create_table :pie_pieces do |t|
      t.belongs_to :pie, index: true
      t.string :title

      t.timestamps
    end
  end
end
