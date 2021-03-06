# == Schema Information
#
# Table name: target_organizations
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  org_id         :integer
#  priority_order :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class TargetOrganization < ApplicationRecord
    
    belongs_to :user
    belongs_to :org, :class_name => "Organization"
    
    #VALIDATIONS
    validates :user_id, :org_id, presence: true, on: :create
end
