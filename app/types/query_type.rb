

# The QueryType is the gateway to our data. It defines how requests can ask for data.

QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for this schema"
  field :cars do
    type types[CarType]
    resolve -> (obj, args, ctx) {
      Car.all
    }
  end
  field :people do
    type types[PersonType]
    resolve -> (obj, args, ctx) {
      Person.all
    }
  end
end

# query {
#   people {
#     name
#     surname
#     cars {
#        name
#     }
#   }
# }