class Jname < Formula
  desc "Generate human-readable random names"
  homepage "https://github.com/blater/jname"
  url "https://github.com/blater/jname/releases/download/v0.3.0/jname-0.3.0-darwin-arm64.tar.gz"
  version "0.3.0"
  sha256 "b1fb0b95885dd367111b30219b2228a999a13d39ede2f9ebdccdae9e74df4518"
  license all_of: ["MIT", "Apache-2.0", "CC-BY-SA-4.0"]

  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "jname"
    pkgshare.install "LICENSE", "NOTICE", "LICENSES"
  end

  test do
    output = shell_output("#{bin}/jname --words 3")
    assert_match(/\A[a-z]+(?:-[a-z]+){2}\n\z/, output)
  end
end
