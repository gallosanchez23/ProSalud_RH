FactoryGirl.define do
  factory :goal do
    name        { 'Nombre del objetivo' }
    description { 'Descripción' }
    start_date  { FFaker::Time.date }
    end_date    { FFaker::Time.date }
  end

  factory :individual, parent: :goal do |goal|
    goal_type { 0 }
  end

  factory :grup, parent: :goal do |goal|
    goal_type { 1 }
  end
end
