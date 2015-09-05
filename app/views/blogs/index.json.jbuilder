json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :body, :url, :user_id
  json.url blog_url(blog, format: :json)
end
