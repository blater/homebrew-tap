class Slopwatch < Formula
  desc "Native code-quality scoring and live slopwatch dashboard"
  homepage "https://github.com/blater/slopwatch"
  url "https://github.com/blater/slopwatch/releases/download/v0.1.24/slopwatch-0.1.24-darwin-arm64.tar.gz"
  version "0.1.24"
  sha256 "dd6fc207d9e2d1ce8530c35b462af902c0cbb948a622a89780ffad02c91c72ba"
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
