class Nq < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nq"
  url "https://github.com/blater/nq/releases/download/v0.9.2/nq-0.9.2-darwin-arm64.tar.gz"
  version "0.9.2"
  sha256 "f3f427e73c11b9d2d898707c6b90f626d8da85f9ef56a8fd51808c119e3be4c4"
  license "AGPL-3.0-only"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "nq"
  end

  test do
    output = shell_output("#{bin}/nq --list-caches --cache-dir #{testpath}/cache 2>&1")
    assert_match "No caches found", output
  end
end
