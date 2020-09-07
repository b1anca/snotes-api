class NoteSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :description, :image_url, :created_at

  def image_url
    rails_blob_url(object.image) if object.image.attached?
  end
end
