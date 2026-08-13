class Nq < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nq"
  url "https://github.com/blater/nq/releases/download/v1.0.4/nq-1.0.4-darwin-arm64.tar.gz"
  version "1.0.4"
  sha256 "118ea3f01356a76cb83a680f309a40e6fbb0ea545be5d6a8fd3d4dc42b1fad9c"
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
