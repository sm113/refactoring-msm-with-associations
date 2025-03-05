# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  belongs_to :movie, class_name: "Movie", required: false
  belongs_to :actor, class_name: "Actor", foreign_key: "actor_id"
end
