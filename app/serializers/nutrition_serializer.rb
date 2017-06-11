class NutritionSerializer < ActiveModel::Serializer
  attributes :id, :name, :intro, :cons, :pros, :bda, :image
end
