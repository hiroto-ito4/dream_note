class Work < ApplicationRecord
  with_options presence: true do
    validates :genre_id, numericality: { other_than: 1, message: 'を選択しましょう' }
    validates :title
    validates :content
    validates :inpression
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
end
