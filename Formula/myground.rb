class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.87"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.87/myground-x86_64-apple-darwin"
      sha256 "4ab719f881bc39c7d88a298d5702edf3b98297f28e24ef18d4b1fa55963ba1c0"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.87/myground-aarch64-apple-darwin"
      sha256 "dae3353a73d1ffee7abcd7f8e4ddf6af2dcec89be5c47cc48a63af1566dd0cd0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.87/myground-x86_64-unknown-linux-gnu"
      sha256 "976411671af42e800ddd4d38131542e5178912333806951f9a090d4e9a3129a5"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.87/myground-aarch64-unknown-linux-gnu"
      sha256 "90357971a0f7231ff4d77d261851d65e20b9e9baa37bb8dbf5cb7573d9661a8e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
