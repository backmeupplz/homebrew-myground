class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.2"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.2/myground-x86_64-apple-darwin"
      sha256 "225900eca59a14b22093b56fd0d20d1907841d546f8a6a6cadeb6c577a808d93"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.2/myground-aarch64-apple-darwin"
      sha256 "69bd4bf08f162e7f5c8cea8b6b43a90216fe6e090017f277a46d74739f4cb1fb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.2/myground-x86_64-unknown-linux-gnu"
      sha256 "0e89226206ca350037b5e0faabdf45b6b5dcf04f674edbce0c58d05d265632c7"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.2/myground-aarch64-unknown-linux-gnu"
      sha256 "434a7899a7486da16e615933f6ced503512f7da9a12e8c56ee6929e69723caa8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
