class PiePiece < ActiveRecord::Base
  belongs_to :pie
  validates_uniqueness_of :title, scope: :pie_id
  has_one :users, through: :pie
  scope :user, ->(id) {
    joins(:users)
    .where('users.id = ?', id)
  }
end
