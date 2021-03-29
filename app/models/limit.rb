class Limit < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1ヶ月後までに' },
    { id: 3, name: '2ヶ月後までに' },
    { id: 4, name: '3ヶ月後までに' },
    { id: 5, name: '4ヶ月後までに' },
    { id: 6, name: '5ヶ月後までに' },
    { id: 7, name: '半年後までに' },
    { id: 8, name: '7ヶ月後までに' },
    { id: 9, name: '8ヶ月後までに' },
    { id: 10, name: '9ヶ月後までに' },
    { id: 11, name: '10ヶ月後までに' },
    { id: 12, name: '11ヶ月後までに' },
    { id: 13, name: '1年後までに' },
    { id: 14, name: '2年後までに' },
    { id: 15, name: '3年後までに' },
    { id: 16, name: '4年後までに' },
    { id: 17, name: '5年後までに' },
    { id: 18, name: '6年後までに' },
    { id: 19, name: '7年後までに' },
    { id: 20, name: '8年後までに' },
    { id: 21, name: '9年後までに' },
    { id: 22, name: '10年後までに' },
    { id: 23, name: '11年後までに' },
    { id: 24, name: '12年後までに' },
    { id: 25, name: '13年後までに' },
    { id: 26, name: '14年後までに' },
    { id: 27, name: '15年後までに' },
    { id: 28, name: '16年後までに' },
    { id: 29, name: '17年後までに' },
    { id: 30, name: '18年後までに' },
    { id: 31, name: '19年後までに' },
    { id: 32, name: '20年後までに' },
    { id: 33, name: '25年後までに' },
    { id: 34, name: '30年後までに' }
  ]

  include ActiveHash::Associations
  has_many :users
end
