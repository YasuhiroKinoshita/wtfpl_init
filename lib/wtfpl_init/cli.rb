require 'fileutils'

module WtfplInit
  class Cli
    DEFAULT_LICENSE_FILE_NAME = 'LICENSE.md'

    def run(license_file = DEFAULT_LICENSE_FILE_NAME)
      File.open(license_file, File::CREAT|File::EXCL|File::WRONLY, 0644) do |f|
        f.write(WtfplInit.fetch)
      end
    end
  end
end
