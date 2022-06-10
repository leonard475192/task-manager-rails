require 'rails_helper'

RSpec.describe "Api::V1::Tasks", type: :request do
  describe "GET" do
    example "成功" do
      get api_v1_tasks_url
      expect(response.status).to eq(200) 
    end
  end
  describe "POST" do
    let(:params_hash) { attributes_for(:task) }

    example "成功" do
      post api_v1_tasks_url, params: { task: params_hash }
      expect(response.status).to eq(201) 
    end
  end
  describe "PATCH" do
    let(:task) { create(:task) }
    let(:params_hash) { attributes_for(:task) }

    example "成功" do
      patch api_v1_task_url(task), params: { task: params_hash }
      expect(response.status).to eq(200) 
    end
  end
  describe "DELETE" do
    let(:task) { create(:task) }

    example "成功" do
      delete api_v1_task_url(task)
      expect(response.status).to eq(204) 
    end
  end
end
