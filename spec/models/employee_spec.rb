require 'rails_helper'

RSpec.describe Employee, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:birthdate) }
    it { should validate_presence_of(:admission_date) }
    it { should validate_presence_of(:salary) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:role) }
  end
end
