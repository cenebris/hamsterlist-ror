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

  describe 'POST #create' do

    context 'successful creation' do

      it 'saves new task object' do
        post :create, task: Fabricate.attributes_for(:task)
        expect(Task.count).to equal(1)
      end

      it 'redirects to tasks/index' do
        post :create, task: Fabricate.attributes_for(:task)
        expect(response).to redirect_to tasks_path
      end

      it 'shows success notification'

    end

    context 'unsuccessful creation' do

      it 'does not save with invalid data' do
        post :create, task: Fabricate.attributes_for(:task, name: nil)
        expect(Task.count).to eq(0)
      end

      it 'shows failure notification'

    end


  end

  describe 'DELETE #destroy' do
    let(:task) {Fabricate(:task)}

    it 'deletes task with given id' do
      delete :destroy, id: task.id
      expect(Task.count).to eq(0)
    end

    it 'redirects to the tasks/index action' do
      delete :destroy, id: task.id
      expect(response).to redirect_to tasks_path
    end

    it 'shows deletion notification'

  end

end