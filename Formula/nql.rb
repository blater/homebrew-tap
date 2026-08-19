class Nql < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nql"
  url "https://github.com/blater/nql/releases/download/v1.0.8/nql-1.0.8-darwin-arm64.tar.gz"
  version "1.0.8"
  sha256 "d608a67b593d0f4b632ec41759a0209f94490d50a5fb4177eeabbed90689341b"
  license "AGPL-3.0-only"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "nql"
  end

  test do
    output = shell_output("#{bin}/nql cache list --cache-dir #{testpath}/cache --report-format json 2>&1")
    assert_match '"caches":[]', output
  end
end
