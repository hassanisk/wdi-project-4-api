class DietSerializer < ActiveModel::Serializer
  attributes :id, :name, :intro, :cons, :pros, :bda
end
