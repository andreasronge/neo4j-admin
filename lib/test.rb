require 'rubygems'
require "bundler/setup"
require 'neo4j'
require 'neo4j-admin'

Neo4j.start
graphdb = Neo4j.db.graph
#WrappingNeoServerBootstrapper srv;

puts "start server"
srv = org.neo4j.server.WrappingNeoServerBootstrapper.new(graphdb)
srv.start
puts "SLEEP"
while(true)
  sleep(180)
end
puts "WAKE UP"
puts "Wait"
# The server is now running
# until we stop it:
srv.stop()
Neo4j.shutdown
