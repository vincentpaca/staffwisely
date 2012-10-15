require 'spec_helper'

describe Company do
  it { should have_many(:users) }
  it { should have_many(:employees) }
  it { should have_many(:notifications) }
  it { should have_many(:employee_projects) }
  it { should have_many(:employer_projects) }
end
