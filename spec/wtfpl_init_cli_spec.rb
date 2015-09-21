require 'spec_helper'
require "securerandom"

describe "CLI" do
  describe "#run" do
    let(:random_filename) { SecureRandom.hex }
    before do
      raise if File.exists?(random_filename)
    end

    context 'File not exists' do
      it 'can create license file' do
        WtfplInit::Cli.new.run(random_filename)
        expect(File.exists?(random_filename)).to eq true
      end
    end

    context 'File already exists' do
      before do
        File.open(random_filename, File::CREAT|File::EXCL|File::WRONLY, 0644) { |f| f.write(random_filename) }
      end

      it 'raise file exists error' do
        expect{ WtfplInit::Cli.new.run(random_filename) }.to raise_error Errno::EEXIST
      end
    end

    after do
      File.delete(random_filename)
    end
  end
end
