require 'spec_helper'

describe Notification do
  it { should belong_to(:sender) }
  it { should belong_to(:company) }
  it { should belong_to(:project) }
end
