require 'rails_helper'

RSpec.describe Work, type: :model do
  before do
    @work = FactoryBot.build(:work)
  end

  describe 'アクション投稿' do
    context '新規投稿できるとき' do
      it 'すべての項目が存在すれば登録できる' do
        expect(@work).to be_valid
      end
      it '画像が存在しなくても投稿できる' do
        @work.image = nil
        expect(@work).to be_valid
      end
    end
    context '新規投稿できないとき' do
      it '投稿内容を選択しないと投稿できない' do
        @work.genre_id = 1
        @work.valid?
        expect(@work.errors.full_messages).to include("投稿内容を選択しましょう")
      end
      it 'タイトルが空では登録できない' do
        @work.title = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("アクションのタイトルを入力してください")
      end
      it 'タイトルが50文字より多いと登録できない' do
        @work.title = 'あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやいゆえよらりるれろわをんんんあ'
        @work.valid?
        expect(@work.errors.full_messages).to include("アクションのタイトルは50文字以内で入力してください")
      end
      it '内容が空では登録できない' do
        @work.content = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("アクションの内容を入力してください")
      end
      it '内容が250文字より多いと登録できない' do
        @work.content = 'あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやいゆえよらりるれろわをんんんあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやいゆえよらりるれろわをんんんあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやいゆえよらりるれろわをんんんあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやいゆえよらりるれろわをんんんあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやいゆえよらりるれろわをんんんあ'
        @work.valid?
        expect(@work.errors.full_messages).to include("アクションの内容は250文字以内で入力してください")
      end
      it '感想が空では登録できない' do
        @work.inpression = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("アクションの感想を入力してください")
      end
      it '感想が250文字より多いと登録できない' do
        @work.inpression = 'あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやいゆえよらりるれろわをんんんあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやいゆえよらりるれろわをんんんあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやいゆえよらりるれろわをんんんあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやいゆえよらりるれろわをんんんあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやいゆえよらりるれろわをんんんあ'
        @work.valid?
        expect(@work.errors.full_messages).to include("アクションの感想は250文字以内で入力してください")
      end
    end
  end
end