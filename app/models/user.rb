class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #エラーメッセージの順番を保つためwith_optionsを使用しない箇所あり
  with_options presence: true do
    validates :nickname
    validates :profile
    validates :dream
    validates :first_limit_id, numericality: { other_than: 1 ,message: 'やるのかを選択しましょう'} 
    validates :first_process
    validates :second_limit_id, numericality: { other_than: 1 ,message: 'やるのかを選択しましょう'} 
    validates :second_process
    validates :third_limit_id, numericality: { other_than: 1 ,message: 'やるのかを選択しましょう'} 
    validates :third_process
    validates :fourth_limit_id, numericality: true
    validates :fifth_limit_id, numericality: true
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :limits  
  has_many :works
  has_many :comment
end
