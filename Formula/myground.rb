class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.113"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.113/myground-x86_64-apple-darwin"
      sha256 "ac917d5af21043d4aff7cde77ece8e6d8694ac60f90115ad36886b13e0e2a84b"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.113/myground-aarch64-apple-darwin"
      sha256 "faa1eb2d536f69b2a3f8463d34a05a934d013c4de70c5ff935511b913f04a047"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.113/myground-x86_64-unknown-linux-gnu"
      sha256 "b15a29bc7222e764e5303aa66358ad2479636d5d5d6e1e0896bd1bb3fc1f590d"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.113/myground-aarch64-unknown-linux-gnu"
      sha256 "f8be8e842612ae61ef4f5a5d44c32011b5595d9cbe98e46ae20962dfa30866f9"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
