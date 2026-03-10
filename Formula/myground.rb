class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.65"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.65/myground-x86_64-apple-darwin"
      sha256 "37eba2c7b56ecd3e9259a97825dd0d00dc1c4b5cfcb6a8854f1f4513fc520462"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.65/myground-aarch64-apple-darwin"
      sha256 "0b3d8c91fb839da8cfe846de4d6a3545af45054a8f2dbb178478b8122940f82f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.65/myground-x86_64-unknown-linux-gnu"
      sha256 "51c036462b0d1a741b5471059795d2efd82168fef78e8438b32fc60d5e8bbca3"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.65/myground-aarch64-unknown-linux-gnu"
      sha256 "5bf63a87c94a43d642d2ae946893f750fd20567cd7de84a260b7b476851c8867"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
