class Nq < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nq"
  url "https://github.com/blater/nq/releases/download/v0.9.8/nq-0.9.8-darwin-arm64.tar.gz"
  version "0.9.8"
  sha256 "c08e87383a69d4a0d8492f0db724288e0a2c1ecb24ef09d7862aa45c2c99e1e1"
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
