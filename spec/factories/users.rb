FactoryBot.define do
  factory :user do
    email                  { Faker::Internet.free_email }
    password               { '12345678' }
    password_confirmation  { password }
    nickname               { 'テスト' }
    profile                { '25際男性です。プログラミング学んでます！楽しい！' }
    dream                  { '一流のエンジニア' }
    first_limit_id         { 2 }
    first_process          { 'テスト' }
    second_limit_id        { 3 }
    second_process         { 'テストテスト' }
    third_limit_id         { 4 }
    third_process          { 'テストテストテスト' }
    fourth_limit_id        { 5 }
    fourth_process         { 'テストテストテストテスト' }
    fifth_limit_id         { 6 }
    fifth_process          { 'テストテストテストテストテスト' }
  end
end