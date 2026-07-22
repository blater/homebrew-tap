class Nestql < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nestql"
  url "https://github.com/blater/nestql/releases/download/v1.0.8/nestql-1.0.8-darwin-arm64.tar.gz"
  version "1.0.8"
  sha256 "ab39371c9a3f82860825ee998fd070f3aa87b4d8aecb7057f7ec9a37ce109ff9"
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
