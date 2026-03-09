class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.54"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.54/myground-x86_64-apple-darwin"
      sha256 "4c5538f5a226c9dc519930b8786db5559bb43483c74114b25eba024a70a7fb11"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.54/myground-aarch64-apple-darwin"
      sha256 "4de2d2d0d4fd3f4d383ac3c5f46bf628209fd71d61d96bedbf0208e87fbd1086"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.54/myground-x86_64-unknown-linux-gnu"
      sha256 "a62f7d497bcc01cb68eeada45d999d638dca12dd9372670ff84e6aca75f41a78"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.54/myground-aarch64-unknown-linux-gnu"
      sha256 "46329e14b3cc89a87147233d4cf6ce5e687485f831a7e942216c96e799165b08"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
