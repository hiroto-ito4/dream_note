FactoryBot.define do
  factory :work do
    genre_id   { 2 }
    title      { 'タイトルを記入' }
    content    { '内容を記入' }
    inpression { '感想を記入' }
    association :user
    after(:build) do |work|
      work.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
