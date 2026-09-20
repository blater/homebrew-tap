class Slopwatch < Formula
  desc "Native code-quality scoring and live slopwatch dashboard"
  homepage "https://github.com/blater/slopwatch"
  url "https://github.com/blater/slopwatch/releases/download/v0.1.21/slopwatch-0.1.21-darwin-arm64.tar.gz"
  version "0.1.21"
  sha256 "a2e64088619e8ececc95739c491b730e269879f411b3884e5d1d6d5683d385bd"
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
