require 'rails_helper'

RSpec.describe TransfersController, type: :controller do
  describe 'POST #create' do
    before { post :create, params: transfer_params }

    let(:transfer_params) do
      {
        account_id: 1,
        amount: 200
      }
    end

    subject { JSON.parse(response.body) }

    it { expect(response).to have_http_status(:success) }
    it { is_expected.to include 'amount' => 200 }
    it { is_expected.to include 'id' }
    it { is_expected.to include 'account_id' }
  end
end
