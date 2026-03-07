class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.8"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.8/myground-x86_64-apple-darwin"
      sha256 "d6afbe3d9826158121ca4003d9c3b7c2991d368f1aed93cdde7c86b4d8bfd747"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.8/myground-aarch64-apple-darwin"
      sha256 "bd88f1ed6ebe1514ff775c240bfdf832a449d1e09ca9c48e909f36f224fbeae4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.8/myground-x86_64-unknown-linux-gnu"
      sha256 "96c604f1934981252cd3afb044443b04d740639ac5265b7138be26983f4f1c68"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.8/myground-aarch64-unknown-linux-gnu"
      sha256 "0ba653d543e7c0d33f1620527bfd0826aefab43c421d1632359546299387b3d5"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
