class Excercise < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  has_many :detail_excercises, dependent: :destroy
  has_many :questions, through: :detail_excercises
  accepts_nested_attributes_for :detail_excercises

  scope :sort_by_updated, ->{order updated_at: :DESC}
  scope :search_name_lesson,
    ->(search){joins(:lesson).where("lessons.name LIKE ?", "%#{search}%")}
end
