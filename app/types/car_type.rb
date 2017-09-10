
# types/car_type.rb


CarType = GraphQL::ObjectType.define do
 name "Car"
  description "A Car"
  field :id, types.ID
  field :name, types.String
  field :person do
    type PersonType
    resolve -> (car, args, ctx) {
      car.person
    }
  end
end

# Here, the :person field will grab the car.person, and then structure it according to the PersonType.
# This means we can then access the person’s name, surname, and car, if we want.