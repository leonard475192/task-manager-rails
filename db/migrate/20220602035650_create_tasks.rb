class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title, null: false   # タスク名
      t.string :status, null: false  # タスクの状態
      t.text :content                # タスクの内容・説明
      t.integer :man_hour            # 工数
      t.date :deadline_at            # 締め切り
      t.timestamps
    end
  end
end
