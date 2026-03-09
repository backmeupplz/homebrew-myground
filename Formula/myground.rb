class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.62"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.62/myground-x86_64-apple-darwin"
      sha256 "9740bf26d5add61c1ad19e2933976c56f69aeb21ab2084b6d1eab1da41e8f8f4"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.62/myground-aarch64-apple-darwin"
      sha256 "52a6b406628ba4b72e753687c0bc0ac36efcab28becf957b0018100ed534d714"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.62/myground-x86_64-unknown-linux-gnu"
      sha256 "c0ebb674d9f4eeeb6042cc080f0f7a48640fabd750ae7de2ef1f4358ab8d09ac"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.62/myground-aarch64-unknown-linux-gnu"
      sha256 "f838af307ab9aa23e9964f07305c083349bb530c31b4a727446336541afa2f27"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
