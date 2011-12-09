require 'rubygems'
require "bundler/setup"
require 'neo4j'

require 'neo4j-admin/jars/neo4j-server-1.6.M01.jar'
require 'neo4j-admin/jars/neo4j-server-1.6.M01-static-web.jar'
require 'neo4j-admin/jars/commons-configuration-1.6.jar'
require 'neo4j-admin/jars/commons-logging-1.1.1.jar'
require 'neo4j-admin/jars/commons-lang-2.4.jar'
require 'neo4j-admin/jars/commons-collections-3.2.1.jar'
require 'neo4j-admin/jars/jetty-6.1.25.jar'
require 'neo4j-admin/jars/jetty-util-6.1.25.jar'
require 'neo4j-admin/jars/servlet-api-2.5-20081211.jar'
require 'neo4j-admin/jars/jersey-core-1.9.jar'
require 'neo4j-admin/jars/jersey-server-1.9.jar'
require 'neo4j-admin/jars/rrd4j-2.0.7.jar'
require 'neo4j-admin/jars/asm-3.1.jar'
require 'neo4j-admin/jars/jackson-core-asl-1.8.3.jar'

Neo4j.start
graphdb = Neo4j.db.graph
#WrappingNeoServerBootstrapper srv;

puts "start server"
srv = org.neo4j.server.WrappingNeoServerBootstrapper.new(graphdb)
srv.start
puts "SLEEP"
sleep(120)
puts "WAKE UP"
puts "Wait"
# The server is now running
# until we stop it:
srv.stop()
Neo4j.shutdown