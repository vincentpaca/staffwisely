require 'spec_helper'

describe Continent do
  it { should have_many(:countries) }
end
