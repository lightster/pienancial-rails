class Pie < ActiveRecord::Base
  belongs_to :user
  validates_uniqueness_of :title, scope: :user_id
  has_many :pie_pieces
  scope :user, ->(id) {
    where(:user_id => id)
  }
end
