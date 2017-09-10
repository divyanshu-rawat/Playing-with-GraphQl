
# GraphQL where to get the data for the pet
# we have to add a resolve function, which grabs the person’s cars.

PersonType = GraphQL::ObjectType.define do
 name "Person"
  description "A Person"
  field :id, types.ID
  field :name, types.String
  field :surname, types.String
  field :cars do
    type types[CarType]
    resolve -> (person, args, ctx) {
      person.cars
    }
  end
end

# What resolve does is get the data from person.cars,
# and then runs that data through the CarType to structure it.