require 'spec_helper'

describe Employment do
  it { should belong_to(:employee) }
  it { should belong_to(:project) }
end
