class LinearCli < Formula
  desc "A fast, no-nonsense CLI for Linear"
  homepage "https://github.com/duailibe/linear-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/duailibe/linear-cli/releases/download/v#{version}/linear_#{version}_darwin_arm64.tar.gz"
      sha256 "eb37be71020888f25092c4a4c60744b9cfd4fc5aed2e8d40856f069464a98e79"
    else
      url "https://github.com/duailibe/linear-cli/releases/download/v#{version}/linear_#{version}_darwin_amd64.tar.gz"
      sha256 "ece3590fafc01e4ac741a568e09637a9f1f1486033caf82f8145d33667813507"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/duailibe/linear-cli/releases/download/v#{version}/linear_#{version}_linux_arm64.tar.gz"
      sha256 "ad94bafcf3fc834443811d45fd87317962ba1d0a89e79c3e3686188d967f4da7"
    else
      url "https://github.com/duailibe/linear-cli/releases/download/v#{version}/linear_#{version}_linux_amd64.tar.gz"
      sha256 "dc9071910c657f68923072f606fdede7102825faca7c35108e2b2f680e5fe14a"
    end
  end

  def install
    bin.install "linear"
  end

  test do
    assert_match "linear version", shell_output("#{bin}/linear --version")
  end
end
