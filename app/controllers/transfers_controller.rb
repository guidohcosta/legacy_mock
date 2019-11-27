class TransfersController < ApplicationController
  def create
    render json: transfer_json
  end

  private

  def transfer_json
    {
      id: 1,
      amount: 200,
      account_id: 1
    }
  end
end
