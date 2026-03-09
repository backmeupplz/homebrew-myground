class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.57"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.57/myground-x86_64-apple-darwin"
      sha256 "ccd0333506a6351868e850565f5e8271a331fe684de18d315b412d0adceae420"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.57/myground-aarch64-apple-darwin"
      sha256 "af300d8d50ee04fa5e343e17ba0d9a74ee3bbe96e398989759eb8f8718f3dceb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.57/myground-x86_64-unknown-linux-gnu"
      sha256 "71170bc41ed2d35eca03a9b979711940e71a02749efdd04a7e0eb7520c3a841f"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.57/myground-aarch64-unknown-linux-gnu"
      sha256 "d6af5c48542d02fac8856149bfe21048c2181561f8f55e6d0910e571cdf08476"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
