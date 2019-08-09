class ReleaseTest < Formula
  desc "Bootique CLI tools"
  homepage "https://bootique.io"
  url "https://bintray.com/aarrsseni/release-test/download_file?file_path=release-test-1.62.zip"
  sha256 "a37373450c924fd3fbe078125a4190f80b67f68ca88d5d4cbd3b16bf5ceba845"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/release-test"
  end

  test do
    system "release-test"
  end
end
