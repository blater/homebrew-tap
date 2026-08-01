class Nq < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nq"
  url "https://github.com/blater/nq/releases/download/v0.9.11/nq-0.9.11-darwin-arm64.tar.gz"
  version "0.9.11"
  sha256 "fc2c154657b739cc786682acb819a61cd8f3e5960af38fb8410a62d70cb8c436"
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
