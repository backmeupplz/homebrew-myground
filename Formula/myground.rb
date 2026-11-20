class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.114"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.114/myground-x86_64-apple-darwin"
      sha256 "1ba92b6628094361d8adfea862769c449980ff9f6613ba019198f0097a01b7ba"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.114/myground-aarch64-apple-darwin"
      sha256 "803af758756047e30d55323dfa48672bb6c54ad47238e35cbb0e93f1cef5df9d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.114/myground-x86_64-unknown-linux-gnu"
      sha256 "11340f466a75bc44933d44acaa707e749bde6eec0595662d60e546ca84d1c6a3"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.114/myground-aarch64-unknown-linux-gnu"
      sha256 "7867d9dfcf4a1f3f721972fcc7e094e8e69313dfbb02c621db171c40c14ea54e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
