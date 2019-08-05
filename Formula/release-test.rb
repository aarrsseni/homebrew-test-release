class ReleaseTest < Formula
  desc "Bootique CLI tools"
  homepage "https://bootique.io"
  url "https://bintray.com/aarrsseni/release-test/download_file?file_path=release-test-1.44.zip"
  sha256 "244e4588fd237612fbcf93577389842a8489b6134e238dfdfe15189b64ca1545"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/release-test"
  end

  test do
    system "release-test"
  end
end
