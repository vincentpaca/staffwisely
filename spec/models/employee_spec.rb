require 'spec_helper'

describe Employee do
  it { should belong_to(:company) }
  it { should belong_to(:country) }
  it { should have_many(:employments) }
end
