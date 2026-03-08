class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.44"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.44/myground-x86_64-apple-darwin"
      sha256 "7555c16b1535690c48c3b799018b49620048ea3712f12c0e6c7fa8911f6f4a0c"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.44/myground-aarch64-apple-darwin"
      sha256 "66960c9ae9f036cf8e9c319a9ed3ad606d41b8ca33a3b6de59e2daabf7680a16"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.44/myground-x86_64-unknown-linux-gnu"
      sha256 "aacf7fe5eef8b2329de3dba82a5750a528989464493e1073065384e911c8eee3"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.44/myground-aarch64-unknown-linux-gnu"
      sha256 "2508f45ec353ead21492412f2edafac8a89f0747c0eb8715ac5cea80d378078e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
