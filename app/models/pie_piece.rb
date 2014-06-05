class PiePiece < ActiveRecord::Base
  belongs_to :pie
  has_one :users, through: :pie
  scope :user, ->(id) {
    joins(:users)
    .where('users.id = ?', id)
  }
end
