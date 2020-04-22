describe 'visitors/index.html.erb' do
  it 'displays home' do
    render
    expect(rendered).to match /Welcome/
  end
end
