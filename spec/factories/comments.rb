FactoryBot.define do
  factory :comment do
    reaction {'コメントコメントコメントテスト'}
    association :user
    association :work
  end
end
