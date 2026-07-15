class Nestql < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nestql"
  url "https://github.com/blater/nestql/releases/download/v1.0.4/nestql-1.0.4-darwin-arm64.tar.gz"
  version "1.0.4"
  sha256 "e542ebbf496c4bccd4a9de5fbd9cca47c81fc3f0883420c01728653a32af47a6"
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
