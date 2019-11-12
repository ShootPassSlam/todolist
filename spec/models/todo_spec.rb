require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Todo, type: :model do
  # Validation tests
  # ensure columns title is present before saving
  it { should validate_presence_of(:title) }
end

