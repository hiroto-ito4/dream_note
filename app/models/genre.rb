class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '積み上げ報告' },
    { id: 3, name: '質問' },
    { id: 4, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :users
end