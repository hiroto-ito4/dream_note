class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #エラーメッセージの順番を保つためwith_optionsを使用しない箇所あり
  with_options presence: true do
    validates :nickname
    validates :profile
    validates :dream
    validates :first_limit_id, numericality: { other_than: 1 } 
    validates :first_process
    validates :second_limit_id, numericality: { other_than: 1 } 
    validates :second_process
    validates :third_limit_id, numericality: { other_than: 1 } 
    validates :third_process
    validates :fourth_limit_id, numericality: true
    validates :fourth_process
    validates :fifth_limit_id, numericality: true
    validates :fifth_process
  end
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :genres  #保留
end
