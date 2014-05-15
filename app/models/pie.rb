class Pie < ActiveRecord::Base
  belongs_to :user
  validates_uniqueness_of :title, scope: :user_id
  has_many :pie_pieces
end
