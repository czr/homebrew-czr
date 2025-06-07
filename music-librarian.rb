class MusicLibrarian < Formula
  include Language::Python::Virtualenv

  desc "Python tool for managing and organizing music libraries"
  homepage "https://github.com/czr/music-librarian"
  url "https://github.com/czr/music-librarian/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "b6c238748827cdc610a6e6aef47228e92b4bb183e47bd64569a9d22303ccbc90"
  license "MIT"
  head "https://github.com/czr/music-librarian.git", branch: "main"

  depends_on "python@3.13"
  depends_on "opus-tools"  # Provides opusenc
  depends_on "rsgain"

  resource "click" do
    url "https://files.pythonhosted.org/packages/60/6c/8ca2efa64cf75a977a0d7fac081354553ebe483345c734fb6b6515d96bbc/click-8.2.1.tar.gz"
    sha256 "27c491cc05d968d271d5a1db13e3b5a184636d9d930f148c50b038f0d0646202"
  end

  resource "mutagen" do
    url "https://files.pythonhosted.org/packages/81/e6/64bc71b74eef4b68e61eb921dcf72dabd9e4ec4af1e11891bbd312ccbb77/mutagen-1.47.0.tar.gz"
    sha256 "719fadef0a978c31b4cf3c956261b3c58b6948b32023078a2117b1de09f0fc99"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # Add a simple test to verify the installation works
    system bin/"music-librarian", "--version"
  end
end
