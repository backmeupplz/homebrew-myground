class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.48"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.48/myground-x86_64-apple-darwin"
      sha256 "8c8ed9c5f84084b4f0fef58698142716fdd88b198dfa64c0134fcba12fba93e5"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.48/myground-aarch64-apple-darwin"
      sha256 "9de5770015a9bc4877c7b4972b15c0557fea945b72db6a115131a43955b8646c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.48/myground-x86_64-unknown-linux-gnu"
      sha256 "8feb6009243d6d115a79e0ac75997d8e8b056f2a7801b956aff79c51c794456b"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.48/myground-aarch64-unknown-linux-gnu"
      sha256 "8f3081e58451e1b496b54a1b7910fc0caa0d9462834828e02a0039fb0cc4d893"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
