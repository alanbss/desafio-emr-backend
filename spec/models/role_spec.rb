require 'rails_helper'

RSpec.describe Role, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:activities) }
  end

  it { is_expected.to have_many(:employees) }
end
