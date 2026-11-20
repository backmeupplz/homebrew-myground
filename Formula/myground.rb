class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.112"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.112/myground-x86_64-apple-darwin"
      sha256 "24cbb59a1a498399a00cd85d10a8fc44df76bd557bcd046574f75a6b65e3f95d"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.112/myground-aarch64-apple-darwin"
      sha256 "83e2fb2be201d236ee938be28970707f6622fb34c11df5dfb97bedd83c1a572a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.112/myground-x86_64-unknown-linux-gnu"
      sha256 "403e92ad16b1f5129200433d522905d5f31381b0644a72d2ee7baa9ab57d3117"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.112/myground-aarch64-unknown-linux-gnu"
      sha256 "1376ce42f2df1e5db131b9f22969633e52bd42d5cff8367e2dc12df5d1467f4f"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
