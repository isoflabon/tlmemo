class Folder < ApplicationRecord
  belongs_to :user
  has_many :pages

  validates :name, presence: true, uniqueness: true
end
