# == Schema Information
#
# Table name: jobs
#
#  id          :integer          not null, primary key
#  apply_url   :string
#  description :text
#  job_author  :string
#  job_type    :string
#  location    :string
#  remote_ok   :boolean
#  title       :string
#  url         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_jobs_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Job < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar
  JOB_TYPES = ["Full-time", "Part-time", "Contract", "Freelance"]
end
