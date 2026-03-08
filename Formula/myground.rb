class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.42"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.42/myground-x86_64-apple-darwin"
      sha256 "69a9058dde02389ef4ff368a5b2ac21fb02fee8aff69628ed8515e243d49cec0"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.42/myground-aarch64-apple-darwin"
      sha256 "e1c228295d75257d6d69d163838c5f0e71442d32db281cc23c8906768d19b4f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.42/myground-x86_64-unknown-linux-gnu"
      sha256 "3c3394c8dc831ecd71f309ad154acfb62255601c826efa2aa6667dbfca33ba6b"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.42/myground-aarch64-unknown-linux-gnu"
      sha256 "6a0debc20ec8695465d38865998910be3b55d4d714c05074984335075a6765cb"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
