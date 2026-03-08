class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.30"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.30/myground-x86_64-apple-darwin"
      sha256 "49e2be7bbf39b2e7290600eb42b02b51ef61e012f7bf50747490dd47461dbfb1"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.30/myground-aarch64-apple-darwin"
      sha256 "bd792df457f779dabd6d4daa2fccbba8a7e178226fb2a9eb5f5d4b1052455f27"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.30/myground-x86_64-unknown-linux-gnu"
      sha256 "f3ff6e69a4769d254de3ce3b9e461bcbe64fdcc472d30426d0f96478e4e94f58"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.30/myground-aarch64-unknown-linux-gnu"
      sha256 "40b5ad6624abc85fc94b93e4aa38ddc198b9bb8ad2f3c965103f272db1c6f9d1"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
