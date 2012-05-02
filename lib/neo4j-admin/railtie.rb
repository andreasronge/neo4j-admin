require 'neo4j-admin'

class Neo4jAdmin < Rails::Railtie

  config.after_initialize do
    graphdb = Neo4j.started_db.graph
    srv = Java::OrgNeo4jServer::WrappingNeoServerBootstrapper.new(graphdb)
    srv.start
    puts "neo4j-admin: Started admin server on port 7474"
  end

end
