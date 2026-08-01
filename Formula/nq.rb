class Nq < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nq"
  url "https://github.com/blater/nq/releases/download/v0.9.10/nq-0.9.10-darwin-arm64.tar.gz"
  version "0.9.10"
  sha256 "57a0537b7861b1b0d32c9ebfcb5848d300c48e1a941a954a8a11a9af9ae25a2b"
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
