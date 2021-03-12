class Action < ApplicationRecord

  with_options presence: true do
    validates :genre_id, numericality: { other_than: 1 } 
    validates :title
    validates :content
    validates :inpression
    validates :user_id
  end

  belongs_to :user
  has_one_attached :image

end

