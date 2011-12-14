require 'neo4j-admin'

class Neo4jAdmin < Rails::Railtie

  config.after_initialize do
    graphdb = Neo4j.db.graph
    srv = org.neo4j.server.WrappingNeoServerBootstrapper.new(graphdb)
    srv.start
    puts "neo4j-admin: Started admin server on port 7474"
  end

end
