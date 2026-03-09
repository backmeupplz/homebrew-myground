class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.52"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.52/myground-x86_64-apple-darwin"
      sha256 "dba017a68788f32fc8df15b2a0fca0922df88bd47d840aa5df1da8622203f528"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.52/myground-aarch64-apple-darwin"
      sha256 "0eb3c091e0ed2c1abff0607d5010d55f4715bf31d7b91ad07305b4cadd69a29b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.52/myground-x86_64-unknown-linux-gnu"
      sha256 "7a5f748b68d77258d3d41f3e192366b8c8a2ef04a03f9a4323d9451de2ed5542"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.52/myground-aarch64-unknown-linux-gnu"
      sha256 "35d37c3ed9188a827db960289a2d160dc4615d8ea69dac00ae9a56c18d185661"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
