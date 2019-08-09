class ReleaseTest < Formula
  desc "Bootique CLI tools"
  homepage "https://bootique.io"
  url "https://bintray.com/aarrsseni/release-test/download_file?file_path=release-test-1.54.zip"
  sha256 "2b423fbb126c322ae1f419cb051b6aafe2e7cfab40cda1ed457c45933e262ac2"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/release-test"
  end

  test do
    system "release-test"
  end
end
