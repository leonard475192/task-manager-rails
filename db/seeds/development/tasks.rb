require "faker"

Task.create!(
  title: "タスク",
  status: "DONE",
  content: "あいうえお",
  man_hour: 3,
  deadline_at: Date.tomorrow,
)

task_status = [
  "TODO",
  "DOING",
  "DONE",
]

100.times do |n|
  Task.create!(
    title: "タスク#{n}",
    status: task_status[n % 3],
    content: Faker::Books::Lovecraft.paragraph,
    man_hour: n % 10,
    deadline_at: Faker::Date.forward(300),
  )
end