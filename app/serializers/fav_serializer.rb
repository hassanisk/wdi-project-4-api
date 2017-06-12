class FavSerializer < ActiveModel::Serializer
  attributes :id, :bodypart, :muscelsname, :name, :desc, :rep, :image, :level, :difficulty
  has_one :user
end
