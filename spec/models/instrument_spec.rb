require 'spec_helper'

describe Instrument do
  let(:valid_types) {['Violin', 'Cello', 'French Horn']}
  let(:invalid_types) {['anything else!', '12acae', '123', 123]}
  let(:valid_sizes) {['4/4', '7/8', '3/4', '1/2', '1/4', '1/8', '1/10', '1/16', '1/32']}
  let(:invalid_sizes) {['1/100', '-1/2', '1', '123', '-123', 'words']}
  let(:invalid_emails) {['urser', 'user@com', 'users.com']}
  let(:invalid_names) {["12abc34", "abc123def", 123]}
  let(:invalid_ages) {[-100, "abc", "1abc2", 0]}
  let(:blanks) {['', nil]}

  it {should belong_to :instrumentbank}

  it {should have_valid(:type).when(*valid_types)}
  it {should_not have_valid(:type).when(*invalid_types, *invalid_names, *blanks)}

  it {should have_valid(:size).when(*valid_sizes)}
  it {should_not have_valid(:size).when(*invalid_sizes, *blanks)}

  it {should have_valid(:borrower_first_name).when("Albus")}
  it {should_not have_valid(:borrower_first_name).when(*invalid_names)}

  it {should have_valid(:borrower_last_name).when("Dumbledore")}
  it {should_not have_valid(:borrower_last_name).when(*invalid_names)}

  it {should have_valid(:borrower_email).when("magicman@wizard.com")}
  it {should_not have_valid(:borrower_email).when(*invalid_emails)}

  it {should have_valid(:age).when(21)}
  it {should_not have_valid(:age).when(*invalid_ages)}
end
