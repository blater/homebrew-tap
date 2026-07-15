class Nestql < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nestql"
  url "https://github.com/blater/nestql/releases/download/v1.0.2/nestql-1.0.2-darwin-arm64.tar.gz"
  version "1.0.2"
  sha256 "4ef1a35e2122826e8bacf25a8df420143973c283d2a6c5f4c000d4ad344d1388"
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
