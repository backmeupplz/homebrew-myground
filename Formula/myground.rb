class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.22"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.22/myground-x86_64-apple-darwin"
      sha256 "0bba9a95d79c302b69a315c3614f968c32ed711ab973ab9611e80a1775c74200"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.22/myground-aarch64-apple-darwin"
      sha256 "aa3715b6fd43acf53aefed5868efc2108d7ef936ab8b398d74c22e230e54a69a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.22/myground-x86_64-unknown-linux-gnu"
      sha256 "42edaf2c3c2970f78746ca40985d450527b76fe41aaf489a2fb08aa3f464401a"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.22/myground-aarch64-unknown-linux-gnu"
      sha256 "5a488376e4754d0844457a1e218d87e1d04f14cc6bddbc02b5cb515e249b32e9"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
