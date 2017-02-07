Ransack.configure do |config|
  config.add_predicate 'date_equals',
  arel_predicate: 'eq',
  formatter: proc { |v| v.to_date },
  formatter: proc { |v| v.present? },
  type: :string
end