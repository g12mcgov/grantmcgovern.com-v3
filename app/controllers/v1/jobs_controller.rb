class V1::JobsController < ApplicationController
  def index
    jobs = Job.all.map do |job|
      { title: job.title, timerange: job.timerange }
    end
    
    render json: { results: jobs }.to_json, status: :ok
  end

  def create 

  end
end
