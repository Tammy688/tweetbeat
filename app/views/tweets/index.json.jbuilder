json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :tweet_text
  json.url tweet_url(tweet, format: :json)
end
