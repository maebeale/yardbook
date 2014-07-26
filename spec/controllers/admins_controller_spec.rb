require 'rails_helper'

describe AdminsController, :type => :controller do
  describe "GET index" do
    it "shows all admins" do
      admins = create_list(:admin, 2)
      get :index, format: :json
      data = JSON.parse(response.body)
      expect(data).not_to be_empty
      expect(data['admins'].first['fname']).to eq admins.first.fname
    end
  end

  #
  #   it 'GET #show' do
  # #
  #   end
  #
  #   describe 'POST #create' do
  #     before {@user_attributes = attributes_for(:user)}
  #     it 'succeeds when all attributes are set' do
  #     #
  #     end
  #
  #
  #     it 'fails when a required field is missing' do
  #     #
  #     end
  #   end
  #
  #   describe 'PATCH #update' do
  #     before {@user = create(:user)}
  #     it 'succeeds when valid data are changed' do
  #     #
  #     end
  #
  #     it 'fails when valid data are changed' do
  #     #
  #     end
  #   end
  #
  #   it 'DELETE #destroy' do
  #   #
  #   end
end
