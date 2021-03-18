class Comment < ApplicationRecord

  validates :reaction, presence: true

  belongs_to :user
  belongs_to :comment
end
