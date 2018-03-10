describe 'callbacks' do

  let(:client) { create :client }

  it 'will have an api_key automatically assigned when created' do
    expect(client.api_key).to_not be_nil
  end
end