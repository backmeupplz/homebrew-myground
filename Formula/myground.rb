class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.89"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.89/myground-x86_64-apple-darwin"
      sha256 "3ce4842337195b4c4b568c4132ee5c6734147319107fe9f3dee29a3f85313835"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.89/myground-aarch64-apple-darwin"
      sha256 "26202a8c09dfe9fa1dd6cf078ab08da0e7dbf2debaedfb727970ba6c1824550b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.89/myground-x86_64-unknown-linux-gnu"
      sha256 "3f6242309f30608f0a552221911e5be6e43ae1aeb9cb2c3be073d7c5724d1edb"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.89/myground-aarch64-unknown-linux-gnu"
      sha256 "235d4d36999d7c4e3700f64af6cb2375f8691c16623eb18e31eb75891866b261"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
