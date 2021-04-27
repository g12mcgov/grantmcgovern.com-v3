class V1::JobsController < ApplicationController
  def index
    render json: { 'key': 'value' }.to_json, status: :ok
  end
end
