require 'spec_helper'

describe WtfplInit do
  it 'has a version number' do
    expect(WtfplInit::VERSION).not_to be nil
  end

  it 'can fetch WTFPL plain text file' do
    expect(/DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE/ === WtfplInit.fetch).to eq(true)
  end
end
