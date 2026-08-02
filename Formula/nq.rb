class Nq < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nq"
  url "https://github.com/blater/nq/releases/download/v1.0.0/nq-1.0.0-darwin-arm64.tar.gz"
  version "1.0.0"
  sha256 "5b775e5b15fc0809aa39bcd360667c8fcdf28c2e877cc2239515c29a3d6cd15c"
  license "AGPL-3.0-only"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "nq"
  end

  test do
    output = shell_output("#{bin}/nq --list-caches --cache-dir #{testpath}/cache 2>&1")
    assert_match "No caches found", output
  end
end
