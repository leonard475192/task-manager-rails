require 'rails_helper'

RSpec.describe Task, type: :model do
  describe "バリデーション" do
    example "成功: status=TODO" do
      task = build(:task)
      expect(task).to be_valid  
    end

    example "成功: status=DOING" do
      task = build(:task, status: "DOING")
      expect(task).to be_valid  
    end

    example "成功: status=DONE" do
      task = build(:task, status: "DONE")
      expect(task).to be_valid  
    end

    example "タイトルがないものは無効" do
      task = build(:task, title: nil)
      expect(task).not_to be_valid
    end

    example "タイトルが空文字列は無効" do
      task = build(:task, title: "")
      expect(task).not_to be_valid  
    end

    example "255文字を超えるタイトルは無効" do
      task = build(:task, title: "a"*256)
      expect(task).not_to be_valid  
    end

    example "制約に含まれないステータスは無効" do
      task = build(:task, status: "")
      expect(task).not_to be_valid  
    end
  end
end
