FactoryBot.define do
  factory :task do
    title {"タスク"}
    status {"TODO"}
    content {"あいうえお"}
    man_hour {3}
    deadline_at {Date.tomorrow}
  end
end
