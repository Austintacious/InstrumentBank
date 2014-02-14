require 'spec_helper'

describe InstrumentBank do
  it {should have_many :instruments}
  it {should belong_to :user}
end
