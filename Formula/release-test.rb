class ReleaseTest < Formula
  desc "Bootique CLI tools"
  homepage "https://bootique.io"
  url "https://bintray.com/aarrsseni/release-test/download_file?file_path=release-test-1.27.zip"
  sha256 "47b16ffff409ad0222e5455d24ba1d2241d99ce0fcef02c44402a596c8e27983"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/release-test"
  end

  test do
    system "release-test"
  end
end
