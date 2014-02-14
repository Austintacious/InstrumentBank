require 'spec_helper'

describe User do
  let(:invalid_emails) {['urser', 'user@com', 'users.com']}
  let(:invalid_names) {["12abc34", "abc123def", 123]}
  let(:blanks) {['', nil]}

  it {should have_many :instruments}
  it {should have_one :instrument_bank}

  it {should have_valid(:first_name).when("Albus")}
  it {should_not have_valid(:first_name).when(*invalid_names, *blanks)}

  it {should have_valid(:last_name).when("Dumbledore")}
  it {should_not have_valid(:last_name).when(*invalid_names, *blanks)}

  it {should have_valid(:email).when("mysteriousguy@wizard.com")}
  it {should_not have_valid(:email).when(*invalid_emails, *blanks)}

  it 'has a matching password confirmation' do
    user = User.new
    user.password = "password"
    user.password_confirmation = "another_password"
    expect(user).to_not be_valid
    expect(user.errors[:password_confirmation]).to_not be_blank
  end
end
