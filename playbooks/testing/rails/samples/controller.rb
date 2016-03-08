require 'rails_helper'
RSpec.describe CampiController, type: :controller do
  let!(:login) { mock_login }
  let(:valid_attributes) {
    FactoryGirl.attributes_for(:campus)
  }

  let(:invalid_attributes) {
    {nome: nil, endereco: 'Rua dos Tolos, numero 0'}
  }

  describe 'GET #index' do
    it 'assigns all campi as @campi' do
      campus = Campus.create! valid_attributes
      get :index, {}
      
      expect(assigns(:campi)).to eq([campus])
    end
  end

  describe 'GET #new' do
    it 'assigns a new campus as @campus' do
      get :new, {}
      
      expect(assigns(:campus)).to be_a_new(Campus)
    end
  end


  describe 'GET #edit' do
    it 'assigns the requested campus as @campus' do
      campus = Campus.create! valid_attributes
      get :edit, {id: campus.to_param}

      expect(assigns(:campus)).to eq(campus)
    end

  end


  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Campus' do
        expect {
          post :create, {campus: valid_attributes}
        }.to change(Campus, :count).by(1)
      end

      it 'assigns a newly created campus as @campus' do
        post :create, {campus: valid_attributes}
        expect(assigns(:campus)).to be_a(Campus)
        expect(assigns(:campus)).to be_persisted
      end

      it 'redirects to the campi list' do
        post :create, {campus: valid_attributes}
        expect(response).to redirect_to(campi_path)
      end
    end

    context 'with invalid params' do
      it 'assigns a newly created but unsaved campus as @campus' do
        post :create, {campus: invalid_attributes}
        expect(assigns(:campus)).to be_a_new(Campus)
      end

      it 're-renders the :new template' do
        post :create, {campus: invalid_attributes}
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:novo_endereco) { 'Yellow Brick Road' }
      let(:new_attributes) {
        {endereco: novo_endereco}
      }

      it 'updates the requested campus' do
        campus = Campus.create! valid_attributes
        put :update, {id: campus.to_param, campus: new_attributes}
        campus.reload
        expect(campus.endereco).to eql novo_endereco
      end

      it 'assigns the requested campus as @campus' do
        campus = Campus.create! valid_attributes
        put :update, {id: campus.to_param, campus: valid_attributes}

        expect(assigns(:campus)).to eq(campus)
      end

      it 'redirects to the campi list' do
        campus = Campus.create! valid_attributes
        put :update, {id: campus.to_param, campus: valid_attributes}
        expect(response).to redirect_to(campi_path)
      end
    end

    context 'with invalid params' do
      it 'assigns the campus as @campus' do
        campus = Campus.create! valid_attributes
        put :update, {id: campus.to_param, campus: invalid_attributes}
        expect(assigns(:campus)).to eq(campus)
      end

      it 're-renders the :edit template' do
        campus = Campus.create! valid_attributes
        put :update, {id: campus.to_param, campus: invalid_attributes}
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested campus' do
      campus = Campus.create! valid_attributes
      expect {
        delete :destroy, {id: campus.to_param}
      }.to change(Campus, :count).by(-1)
    end

    it 'redirects to the campi list' do
      campus = Campus.create! valid_attributes
      delete :destroy, {id: campus.to_param}
      expect(response).to redirect_to(campi_url)
    end
  end
end
