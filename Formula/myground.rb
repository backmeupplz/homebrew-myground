class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.75"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.75/myground-x86_64-apple-darwin"
      sha256 "6fce016230effe8069940f9d94f7835257626f184df7d6ea82bcccdc86720496"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.75/myground-aarch64-apple-darwin"
      sha256 "3a9cf8908f139c0bb74bf4ec0bd324705c7c853ee6fc0c7a784c4b4e5685be4d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.75/myground-x86_64-unknown-linux-gnu"
      sha256 "adf8ed9d5ead9f9f5ab2007906773cee6cb36efe82fc3a0b929073864339cbab"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.75/myground-aarch64-unknown-linux-gnu"
      sha256 "95839fa87b0ebcd7d3b505469476b90b85270074401090b96fe039d0290216a3"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
