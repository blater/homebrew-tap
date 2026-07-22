class Nestql < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nestql"
  url "https://github.com/blater/nestql/releases/download/v1.0.9/nestql-1.0.9-darwin-arm64.tar.gz"
  version "1.0.9"
  sha256 "45d603b1445e1f18045fb26ecd6255b323d91edb7f3035b5023899ece42976a3"
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
