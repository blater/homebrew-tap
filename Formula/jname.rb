class Jname < Formula
  desc "Generate human-readable random names"
  homepage "https://github.com/blater/jname"
  url "https://github.com/blater/jname/releases/download/v0.1.0/jname-0.1.0-darwin-arm64.tar.gz"
  version "0.1.0"
  sha256 "a5d275ad221cadd12a4ed163b2f5c1a28c3020a7409afb60792f42bc71672e05"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "jname"
    pkgshare.install "LICENSE", "NOTICE"
  end

  test do
    output = shell_output("#{bin}/jname --words 3")
    assert_match(/\A[a-z]+(?:-[a-z]+){2}\n\z/, output)
  end
end
