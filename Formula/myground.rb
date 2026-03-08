class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.39"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.39/myground-x86_64-apple-darwin"
      sha256 "55e4440983903b6998c3128f0c206fcd90d1c10878349000950012bb55984431"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.39/myground-aarch64-apple-darwin"
      sha256 "516a68aa26e34e64c702350b69d59bd49372ca401ffe292c6d1e545ac4b9c0bc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.39/myground-x86_64-unknown-linux-gnu"
      sha256 "d152df84160d2ed9f8c8afb0d0b384e64d237464278d458f527253a13eaa0721"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.39/myground-aarch64-unknown-linux-gnu"
      sha256 "d72bd4409bb6ddfbdc8886269d2b76e6645171b05825366ca782acf33f2ed163"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
