class SongSerializer < ActiveModel::Serializer
  attributes :name

  belongs_to :artist
end
