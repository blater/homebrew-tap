class Slopwatch < Formula
  desc "Native code-quality scoring and live slopwatch dashboard"
  homepage "https://github.com/blater/slopwatch"
  url "https://github.com/blater/slopwatch/releases/download/v0.1.25/slopwatch-0.1.25-darwin-arm64.tar.gz"
  version "0.1.25"
  sha256 "efada9bd502459d947ae3483aa47bad868ec6e8e1b65bb005a0b825ba5910a2a"
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
