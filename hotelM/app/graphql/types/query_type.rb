class Types::QueryType < Types::BaseObject

  field :room_types, Types::RoomTypeType, null: true, description: "rooms" do
    argument :id, ID, required: false, default_value: false
  end

  def room_types(id)
    RoomType.find_by(id)
  end

end
