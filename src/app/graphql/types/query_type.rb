class Types::QueryType < Types::BaseObject
 
  field :room_types, [RoomTypeType], null: false,
    description: "All RoomType"
  def room_types
    RoomType.all
  end
end
