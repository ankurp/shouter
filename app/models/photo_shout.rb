class PhotoShout < ApplicationRecord
  has_attached_file :image,
    styles: { shout: "200x200>" },
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


  def index
    image_file_name
  end
end
