FactoryBot.define do
  factory :folder do
    sequence(:name) { |n| "folder#{n}"}

    user
  end
end
