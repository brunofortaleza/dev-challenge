# == Schema Information
#
# Table name: requesters
#
#  id           :bigint           not null, primary key
#  company_name :string
#  cnpj         :string
#  address      :string
#  phone        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'rails_helper'

RSpec.describe Requester, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
