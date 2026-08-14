class Nq < Formula
  desc "SQL-like language for querying and transforming structured files"
  homepage "https://github.com/blater/nq"
  url "https://github.com/blater/nq/releases/download/v1.0.7/nq-1.0.7-darwin-arm64.tar.gz"
  version "1.0.7"
  sha256 "a801c5bb34abb8b1db02c57403d402d7e95db6e390f30f5a1f5385548283b491"
  license "AGPL-3.0-only"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "nq"
  end

  test do
    output = shell_output("#{bin}/nq cache list --cache-dir #{testpath}/cache --report-format json 2>&1")
    assert_match '"caches":[]', output
  end
end
