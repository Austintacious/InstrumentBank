require 'spec_helper'

describe Bank do
  it {should belong_to :user}
  it {should have_many :instruments}

  it 'should require a title'
end
