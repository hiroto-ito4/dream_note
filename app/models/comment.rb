class Comment < ApplicationRecord
  validates :reaction, presence: true, length: { maximum: 50 }

  belongs_to :user
  belongs_to :work
end
