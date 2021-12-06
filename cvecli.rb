class Cvecli < Formula
    desc "cvecli"
    homepage "https://github.com/wizedkyle/cvecli"
    version "0.1.0"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/wizedkyle/cvecli/releases/download/0.1.0/cvecli_0.1.0_darwin_arm64.tar.gz"
        sha256 "1becbd9c81fc736ba741bc225a5a975f1836a5b410a95c776e7d76678f676451"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/wizedkyle/cvecli/releases/download/0.1.0/cvecli_0.1.0_darwin_arm64.tar.gz"
        sha256 "1becbd9c81fc736ba741bc225a5a975f1836a5b410a95c776e7d76678f676451"
    end

    if OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
        url ""
        sha256 ""
    end
    
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url ""
        sha256 ""
    end

    conflicts_with "cvecli"

    def install
      bin.install "cvecli"
    end

    test do
        system "#{bin}/cvecli --version"
    end
  end