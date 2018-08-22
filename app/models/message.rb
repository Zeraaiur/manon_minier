class Message
  include ActiveModel::Model
  attr_accessor :nom, :courriel, :contenu
  validates :nom, :courriel, :contenu, presence: true
end
