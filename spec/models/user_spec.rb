require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'すべての項目が存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end
    context '新規登録できないとき' do
      it 'メールアドレスが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end
      it 'メールアドレスに@が含まれていないと登録できない' do
        @user.email = '111111'
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールは不正な値です")
      end
      it 'emailが重複すると登録できない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Eメールはすでに存在します')
      end
      it 'パスワードが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end
      it 'パスワードが６文字以下では登録できない' do
        @user.password = '12345'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")
      end
      it 'パスワード（再入力）が空では登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
      it 'パスワードとパスワード(再入力)が一致していないと登録できない' do
        @user.password = '123456'
        @user.password_confirmation = '654321'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
      it 'ニックネームが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームを入力してください")
      end
      it 'ニックネームが20文字より多いと登録できない' do
        @user.nickname = 'あいうえおかきくけこさしすせそたちつてとさ'
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームは20文字以内で入力してください")
      end
      it 'プロフィールが空では登録できない' do
        @user.profile = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("プロフィールを入力してください")
      end
      it 'プロフィールが280文字より多いと登録できない' do
        @user.profile = 'あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやいゆえよらりるれろわをんんんあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやいゆえよらりるれろわをんんんあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやいゆえよらりるれろわをんんんあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやいゆえよらりるれろわをんんんあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやいゆえよらりるれろわをんんんあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほま'
        @user.valid?
        expect(@user.errors.full_messages).to include("プロフィールは280文字以内で入力してください")
      end
      it '夢が空では登録できない' do
        @user.dream = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("夢を入力してください")
      end
      it '夢が20文字より多いと登録できない' do
        @user.dream = 'あいうえおかきくけこさしすせそたちつてとさ'
        @user.valid?
        expect(@user.errors.full_messages).to include("夢は20文字以内で入力してください")
      end
      it '①いつまでにが選択されていないと登録できない' do
        @user.first_limit_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("①のいつまでにやるのかを選択しましょう")
      end
      it '①何をやるかが空では登録できない' do
        @user.first_process = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("①の何をやるかを入力してください")
      end
      it '①何をやるかが20文字より多いと登録できない' do
        @user.first_process = 'あいうえおかきくけこさしすせそたちつてとさ'
        @user.valid?
        expect(@user.errors.full_messages).to include("①の何をやるかは20文字以内で入力してください")
      end
      it '①いつまでにが選択されていないと登録できない' do
        @user.first_limit_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("①のいつまでにやるのかを選択しましょう")
      end
      it '①何をやるかが空では登録できない' do
        @user.first_process = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("①の何をやるかを入力してください")
      end
      it '①何をやるかが20文字より多いと登録できない' do
        @user.first_process = 'あいうえおかきくけこさしすせそたちつてとさ'
        @user.valid?
        expect(@user.errors.full_messages).to include("①の何をやるかは20文字以内で入力してください")
      end
      it '①いつまでにが選択されていないと登録できない' do
        @user.first_limit_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("①のいつまでにやるのかを選択しましょう")
      end
      it '①何をやるかが空では登録できない' do
        @user.first_process = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("①の何をやるかを入力してください")
      end
      it '①何をやるかが20文字より多いと登録できない' do
        @user.first_process = 'あいうえおかきくけこさしすせそたちつてとさ'
        @user.valid?
        expect(@user.errors.full_messages).to include("①の何をやるかは20文字以内で入力してください")
      end
      it '①いつまでにが選択されていないと登録できない' do
        @user.first_limit_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("①のいつまでにやるのかを選択しましょう")
      end
      it '①何をやるかが空では登録できない' do
        @user.first_process = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("①の何をやるかを入力してください")
      end
      it '①何をやるかが20文字より多いと登録できない' do
        @user.first_process = 'あいうえおかきくけこさしすせそたちつてとさ'
        @user.valid?
        expect(@user.errors.full_messages).to include("①の何をやるかは20文字以内で入力してください")
      end
      it '②いつまでにが選択されていないと登録できない' do
        @user.second_limit_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("②のいつまでにやるのかを選択しましょう")
      end
      it '②何をやるかが空では登録できない' do
        @user.second_process = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("②の何をやるかを入力してください")
      end
      it '②何をやるかが20文字より多いと登録できない' do
        @user.second_process = 'あいうえおかきくけこさしすせそたちつてとさ'
        @user.valid?
        expect(@user.errors.full_messages).to include("②の何をやるかは20文字以内で入力してください")
      end
      it '③いつまでにが選択されていないと登録できない' do
        @user.third_limit_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("③のいつまでにやるのかを選択しましょう")
      end
      it '③何をやるかが空では登録できない' do
        @user.third_process = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("③の何をやるかを入力してください")
      end
      it '③何をやるかが20文字より多いと登録できない' do
        @user.third_process = 'あいうえおかきくけこさしすせそたちつてとさ'
        @user.valid?
        expect(@user.errors.full_messages).to include("③の何をやるかは20文字以内で入力してください")
      end
    end
  end
end
