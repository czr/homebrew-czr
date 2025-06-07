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

    def install
        virtualenv_install_with_resources
    end

    test do
        # Add a simple test to verify the installation works
        system bin/"music-librarian", "--version"
    end
end
