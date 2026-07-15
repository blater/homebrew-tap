class Nestql < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nestql"
  url "https://github.com/blater/nestql/releases/download/v1.0.1/nestql-1.0.1-darwin-arm64.tar.gz"
  version "1.0.1"
  sha256 "1ec1be6b5828f24b22aa0d0a0cbbd89f3b13be7f884d5e3fc1258abbf943872e"
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
