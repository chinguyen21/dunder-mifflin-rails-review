class Employee < ApplicationRecord

  validates :alias, uniqueness: true

  # Message with dynamic attribute value. %{value} will be replaced
  # with the actual value of the attribute. %{attribute} and %{model}
  # are also available.
  validates :title, uniqueness: true


  belongs_to :dog
  def to_s
    self.first_name + " " + self.last_name
  end
end
