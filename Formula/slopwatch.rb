class Slopwatch < Formula
  desc "Native code-quality scoring and live slopwatch dashboard"
  homepage "https://github.com/blater/slopwatch"
  url "https://github.com/blater/slopwatch/releases/download/v0.1.0/slopwatch-0.1.0-darwin-arm64.tar.gz"
  version "0.1.0"
  sha256 "c76dc167caacbe00507951e1b645a2fa33b56ffbbbb35e2233fb8cedd1ff5ddc"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sequoia

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
