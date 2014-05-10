class CreatePies < ActiveRecord::Migration
  def change
    create_table :pies do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.boolean :is_required

      t.timestamps
    end
  end
end
