json.array!(@events) do |event|
  json.extract! event, :id, :name, :prize_money, :application_link, :last_day_apply
  json.url event_url(event, format: :json)
end
