json.array!(@mailers) do |mailer|
  json.extract! mailer, :id
  json.url mailer_url(mailer, format: :json)
end
