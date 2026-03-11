class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.69"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.69/myground-x86_64-apple-darwin"
      sha256 "17c47bda71ea17874a0d7fd0af659b193f18c13924272c8f76c7f1f715dfc23c"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.69/myground-aarch64-apple-darwin"
      sha256 "648b5353e452d4d4c604396bc5b50888cb28bbaa15cde15befa05e2f5edc379a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.69/myground-x86_64-unknown-linux-gnu"
      sha256 "186a61561cb544956368e347f46991d5bab9196d7509dd4d8a79f6ac16e662e3"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.69/myground-aarch64-unknown-linux-gnu"
      sha256 "61df14db9a6c010f2b05bbb975a182989cf0a926281360392a79eec5237d4918"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
