class ReportSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :comment_id
  belongs_to :user
  belongs_to :comment
end
