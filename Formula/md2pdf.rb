class Md2pdf < Formula
  desc "Convert Markdown documents to polished PDFs"
  homepage "https://github.com/blater/md2pdf"
  url "https://github.com/blater/md2pdf/archive/refs/tags/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "08da0460ffc0bd28105a8df000c4e7e734ac20ec4e7b4f73cae14983dae2c4b1"
  license "MIT"

  depends_on "pandoc"
  depends_on "weasyprint"

  def install
    bin.install "md2pdf"
  end

  test do
    assert_match "md2pdf 0.1.0", shell_output("#{bin}/md2pdf --version")
  end
end
