require 'neo4j'

class Tweet
  include Neo4j::ActiveNode

  property :message

  has_many :out, :mentions, type: :mentions, model_class: 'User'
  has_one :in, :user, type: :wrote
end