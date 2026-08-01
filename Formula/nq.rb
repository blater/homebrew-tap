class Nq < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nq"
  url "https://github.com/blater/nq/releases/download/v0.9.7/nq-0.9.7-darwin-arm64.tar.gz"
  version "0.9.7"
  sha256 "88002360e91a0dacbb2416edde4e218ba4581a85c0a786c949bca42353a381d8"
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
