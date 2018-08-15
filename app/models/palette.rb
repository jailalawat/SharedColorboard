# == Schema Information
#
# Table name: palettes
#
#  id         :bigint(8)        not null, primary key
#  color_code :string
#  column     :integer
#  row        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#
# Indexes
#
#  index_palettes_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Palette < ApplicationRecord
  belongs_to :user
end
