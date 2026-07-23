class Nestql < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nestql"
  url "https://github.com/blater/nestql/releases/download/v1.0.1/nestql-1.0.1-darwin-arm64.tar.gz"
  version "1.0.1"
  sha256 "a143f2787056cf44964bd8915b1f6cb2b1806a46aa56d10a0426f6e79799eab1"
  license "AGPL-3.0-only"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "nestql"
  end

  test do
    output = shell_output("#{bin}/nestql --list-caches --cache-dir #{testpath}/cache 2>&1")
    assert_match "No caches found", output
  end
end
