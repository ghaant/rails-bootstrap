# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) { @user = FactoryBot.create(:user) }

  subject { @user }

  it { should be_valid }

  it { should respond_to(:email) }

  it '#email returns a string' do
    expect(@user.email).to match 'user@example.com'
  end

  describe 'when email is blank' do
    before { @user.email = ' ' }
    it { should_not be_valid }
  end

  it '.all returns a list of users' do
    expect(User.all.count).not_to eq 0
  end
end
