json.array!(@todos) do |todo|
  json.extract! todo, :id, :title, :body, :create_time, :has_finished
  json.url todo_url(todo, format: :json)
end
