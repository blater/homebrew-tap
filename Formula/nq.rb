class Nq < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nq"
  url "https://github.com/blater/nq/releases/download/v1.0.5/nq-1.0.5-darwin-arm64.tar.gz"
  version "1.0.5"
  sha256 "8e740ed2d7ce2b6be3b128e3eab4ce609eba8f65f30d0f87fef2a2c69d9d20cf"
  license "AGPL-3.0-only"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "nq"
  end

  test do
    output = shell_output("#{bin}/nq cache list --cache-dir #{testpath}/cache --report-format json 2>&1")
    assert_match '"caches":[]', output
  end
end
