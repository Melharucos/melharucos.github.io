page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :development do
  activate :livereload
end

configure :build do
  activate :minify_css
  activate :minify_javascript
end

set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, smartypants: true, prettify: true
set :index_file, "index.html"


activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.build_before = true
  deploy.branch = "master"
end

activate :directory_indexes
