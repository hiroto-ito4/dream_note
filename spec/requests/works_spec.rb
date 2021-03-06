require 'rails_helper'
describe WorksController, type: :request do
  
  before do
    @work = FactoryBot.create(:work)
  end

  describe 'GET #index' do
    it 'indexアクションにリクエストすると正常にレスポンスが返ってくる' do
      get root_path
      expect(response.status).to eq 200
    end
  end
end
