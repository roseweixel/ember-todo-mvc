class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :isCompleted, :updated_at
end
