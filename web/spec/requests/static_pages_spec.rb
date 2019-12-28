# frozen_string_literal: true

RSpec.describe 'Static Pages', type: :request do
  describe 'home page' do
    it 'renders the correct view template' do
      get '/'

      expect(response).to render_template(:home)
    end

    it 'returns the correct response code' do
      get '/'

      expect(response).to have_http_status(:ok)
    end
  end
end
