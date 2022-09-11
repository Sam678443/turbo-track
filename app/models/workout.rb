class Workout < ApplicationRecord
  has_many :exercises, through: :workout_exercises
  has_many :workout_exercises, dependent: :destroy
  belongs_to :user

  validates :name, presence: true

  def favourite!
    self.favourite = true
    self.save!
  end

  def unfavourite!
    self.favourite = false
    self.save!
  end

end
