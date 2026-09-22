class Slopwatch < Formula
  desc "Native code-quality scoring and live slopwatch dashboard"
  homepage "https://github.com/blater/slopwatch"
  url "https://github.com/blater/slopwatch/releases/download/v0.1.29/slopwatch-0.1.29-darwin-arm64.tar.gz"
  version "0.1.29"
  sha256 "29a38213b1e9970d5ebf1c233ecaa0d8f79e30523953d9da8b5bf4c521fd5522"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sequoia
  depends_on "node"

  def install
    libexec.install "build", "analyzers", "component-catalog.json"
    bin.write_exec_script libexec/"build/slopmark"
    bin.write_exec_script libexec/"build/slopwatch"
  end

  test do
    assert_match "usage: slopmark", shell_output("#{bin}/slopmark --help 2>&1")
    assert_match "usage: slopmark", shell_output("#{bin}/slopwatch --help 2>&1")
  end
end
