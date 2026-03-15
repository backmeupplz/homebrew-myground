class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.72"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.72/myground-x86_64-apple-darwin"
      sha256 "71415e1cbcde71aeb1df30999c5b22869b902d18d179826b4771dc57b006bcec"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.72/myground-aarch64-apple-darwin"
      sha256 "4eee30c458459e7f401951d13f033ba16e497ea13c046ff553555b91ca4f9188"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.72/myground-x86_64-unknown-linux-gnu"
      sha256 "c4c2d4f9b857c062de482807f7501a61c428577a5b969eb0adf8602491173bb4"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.72/myground-aarch64-unknown-linux-gnu"
      sha256 "3ca555fb21aa175b741a704fea1b57fec2439515a29d54b6522be9d8107677c4"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
