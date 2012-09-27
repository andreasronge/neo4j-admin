class User < Neo4j::Rails::Model
  property :name, :type => String
  property :email, :type => String

end
