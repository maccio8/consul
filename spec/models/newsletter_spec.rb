require 'rails_helper'

describe Newsletter do
  let(:newsletter) { build(:newsletter) }

  it "is valid" do
    expect(newsletter).to be_valid
  end

  it 'is not valid without a subject' do
    newsletter.subject = nil
    expect(newsletter).to_not be_valid
  end

  it 'is not valid without a to' do
    newsletter.to = nil
    expect(newsletter).to_not be_valid
  end

  it 'is not valid without a from' do
    newsletter.from = nil
    expect(newsletter).to_not be_valid
  end

  it 'is not valid without a body' do
    newsletter.body = nil
    expect(newsletter).to_not be_valid
  end

  pending "Validate to attribute email format"
  pending "Validate frm attribute email format"
end
