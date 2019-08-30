Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  field :blog, !Types::BlogType do
    resolve ->(_obj, _args, ctx) {
      ctx[:blog]
    }
  end
end