class ReleaseTest < Formula
  desc "Bootique CLI tools"
  homepage "https://bootique.io"
  url "https://bintray.com/aarrsseni/release-test/download_file?file_path=release-test-1.39.zip"
  sha256 "1aa31be0efa3c25227f9e9a52c242b0257ccbd1d4d76aef4bbbd4e580fb0af1d"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/release-test"
  end

  test do
    system "release-test"
  end
end
