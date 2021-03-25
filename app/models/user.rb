class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # エラーメッセージの順番を保つためwith_optionsを使用しない箇所あり
  with_options presence: true do
    validates :nickname, length: { maximum: 20 }
    validates :profile, length: { maximum: 280 }
    validates :dream, length: { maximum: 20 }
    validates :first_limit_id, numericality: { other_than: 1, message: 'やるのかを選択しましょう' }
    validates :first_process, length: { maximum: 20 }
    validates :second_limit_id, numericality: { other_than: 1, message: 'やるのかを選択しましょう' }
    validates :second_process, length: { maximum: 20 }
    validates :third_limit_id, numericality: { other_than: 1, message: 'やるのかを選択しましょう' }
    validates :third_process, length: { maximum: 20 }
    validates :fourth_limit_id, numericality: true
    
  end

  validates :fourth_process, length: { maximum: 20 }
  validates :fourth_limit_id, presence:true, numericality: true
  validates :fifth_process, length: { maximum: 20 }
  validates :fifth_limit_id, presence:true,numericality: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :limits
  has_many :works
  has_many :comment
end
