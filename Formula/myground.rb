class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.97"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.97/myground-x86_64-apple-darwin"
      sha256 "d085774032dc162575c38aca078c841f1fecff911558a1792bc80f9993fdb980"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.97/myground-aarch64-apple-darwin"
      sha256 "7158f0d60649ed2069a312ea9f2650b5b26a93ea0843e7205a50f15fbb66d1e5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.97/myground-x86_64-unknown-linux-gnu"
      sha256 "af0a36ce88fef29f1c70009da9e282b657d826cf5dd7878a89f5581af9b97dd6"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.97/myground-aarch64-unknown-linux-gnu"
      sha256 "b947033bb9baaf2c54ed4e7e2df0a5351ee8fd1d339e0d57972464025bab454f"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
