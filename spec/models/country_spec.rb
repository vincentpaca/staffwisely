require 'spec_helper'

describe Country do
  it { should belong_to(:continent) }
end
