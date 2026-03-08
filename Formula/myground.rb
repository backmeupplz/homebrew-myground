class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.40"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.40/myground-x86_64-apple-darwin"
      sha256 "08b22322854f5ab651e1dc7985bf0c51977a9807e45fd2a9b36ccf05de445b8f"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.40/myground-aarch64-apple-darwin"
      sha256 "45491adf7480f69df02f3075978c254efe50bab072ba87b21cdef14ca5d003ac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.40/myground-x86_64-unknown-linux-gnu"
      sha256 "4afe281727de87925ba1a90ab83c53139ad955d10e0745975a4806c1df7d0dcf"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.40/myground-aarch64-unknown-linux-gnu"
      sha256 "f244e7160f8609be3aee542e8ed439aca249c601cf6b3cdfa2fa696eb9701e59"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
