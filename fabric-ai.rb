class FabricAi < Formula
  desc "Fabric AI"
  homepage "https://github.com/danielmiessler/fabric"
  version "1.4.155"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/danielmiessler/fabric/releases/download/v#{version}/fabric-darwin-arm64"
      sha256 "bfe337323a0d7142fdeb6bf6efe7a796331446afc079585aba33d024c5067c85"
    end
  end

  def install
    bin.install "fabric-darwin-arm64" => "fabric"
  end
end
