require 'spec_helper'

describe SubCategory do
  it { should belong_to(:category) }
end
