require 'rails_helper'

RSpec.describe TasksController, type: :controller do

  describe 'GET #index' do
    it 'returns a successful http request status code' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'renders tasks/new template'

    it 'renders tasks/index template' do
      get :index
      assert_template 'tasks/index'
    end



  end

end