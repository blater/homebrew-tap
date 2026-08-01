class Nq < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nq"
  url "https://github.com/blater/nq/releases/download/v0.9.8/nq-0.9.8-darwin-arm64.tar.gz"
  version "0.9.8"
  sha256 "88c332b37bb9ec86964c7e2056e3639dc3af2f19a4a4789d14f4b2930fab5e62"
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
