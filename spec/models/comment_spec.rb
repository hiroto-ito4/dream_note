require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'comment投稿' do
    context '新規投稿できるとき' do
      it 'すべての項目が存在すれば登録できる' do
        expect(@comment).to be_valid
      end
    end
    context '新規投稿できないとき' do
      it 'コメントが空では登録できない' do
        @comment.reaction = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include("コメントを入力してください")
      end
      it 'コメントが50文字より多いと登録できない' do
        @comment.reaction = 'あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやいゆえよらりるれろわをんんんあ'
        @comment.valid?
        expect(@comment.errors.full_messages).to include("コメントは50文字以内で入力してください")
      end
    end
  end
end

