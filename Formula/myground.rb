class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.110"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.110/myground-x86_64-apple-darwin"
      sha256 "ebfb1f9210fdcee5becd47a10a2016feac3fe480857b36339d209bc26ce2bcbc"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.110/myground-aarch64-apple-darwin"
      sha256 "abff5869e2cc043614be6873cbf6dc1331ba98fc9b598d9cdf79d78a9ac466c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.110/myground-x86_64-unknown-linux-gnu"
      sha256 "dfd63a21808977f70d0863be5228210dabe091c90eefe526e7f0c962183b7e02"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.110/myground-aarch64-unknown-linux-gnu"
      sha256 "743eaf353a02bf02c648a9fa2cd2dfa8a83e0b3c2aa897267a6761c5a8122706"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
