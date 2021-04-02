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
        @work.aaaaa = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("")
      end
      it 'タイトルが空では登録できない' do
        @work.aaaaa = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("")
      end
      it 'タイトルが50文字より多いと登録できない' do
        @work.aaaaa = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("")
      end
      it '内容が空では登録できない' do
        @work.aaaaa = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("")
      end
      it '内容が250文字より多いと登録できない' do
        @work.aaaaa = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("")
      end
      it '感想が空では登録できない' do
        @work.aaaaa = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("")
      end
      it '感想が250文字より多いと登録できない' do
        @work.aaaaa = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("")
      end
    end
  end
end