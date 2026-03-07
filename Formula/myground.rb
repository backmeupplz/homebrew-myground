class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.20"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.20/myground-x86_64-apple-darwin"
      sha256 "b8ab82417ab3aae72b0043a664b9e1e3a5296499536056810d075fe0e78ed92e"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.20/myground-aarch64-apple-darwin"
      sha256 "b4b653b0c1cd9c482609b9ccc7a0d7af1e1e78fce39826a1c0c6f1e24803c11f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.20/myground-x86_64-unknown-linux-gnu"
      sha256 "380eb5b78c6b7c95f48ea227b92a2339d8a29703572e445b9ee27946a09c088c"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.20/myground-aarch64-unknown-linux-gnu"
      sha256 "e9fc099dc079154ded021f6e10c6c35d8b9dc720e6af8b0da6ca61e799852ce2"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
