Gem::Specification.new do |s|
  s.name     = "neo4j-admin"
  s.version  = '0.0.2'
  s.platform = 'java'
  s.required_ruby_version = ">= 1.8.7"

  s.authors  = "Andreas Ronge"
  s.email    = 'andreas.ronge@gmail.com'
  s.homepage = "http://github.com/andreasronge/neo4j-admin/tree"
  s.rubyforge_project = 'neo4j-admin'
  s.summary = "A mostly a development tool which makes neo4j server admin GUI made available for the embedded Neo4j.rb gem"
  s.description = <<-EOF
Loads all the jar files from the neo4j server. The neo4j-admin railtie will start the neo4j server after all
rails initialization is completed.
  EOF

  s.require_path = 'lib'
  s.files = Dir.glob("{lib}/**/*") + %w(README.rdoc CHANGELOG Gemfile neo4j-admin.gemspec)
  s.has_rdoc = false
end
