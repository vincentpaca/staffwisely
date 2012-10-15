require 'spec_helper'

describe Project do
  it { should belong_to(:employer) }
  it { should belong_to(:employee) }
  it { should have_many(:employments) }
  it { should have_many(:employees) }
  it { should have_many(:comments) }
end
