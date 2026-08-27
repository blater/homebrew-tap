class Nql < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nql"
  url "https://github.com/blater/nql/releases/download/v1.0.11/nql-1.0.11-darwin-arm64.tar.gz"
  version "1.0.11"
  sha256 "574ba68380c4bd317d527185e0b4e5368b417458aee14f8cf4490cbd2be34db8"
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
