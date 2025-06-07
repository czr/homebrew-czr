class MusicLibrarian < Formula
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
      # Create a virtual environment in the formula's libexec
      venv = virtualenv_create(libexec, "python3.13")

      # Install the package and its dependencies into the virtual environment
      venv.pip_install resources
      venv.pip_install_and_link buildpath
    end

    test do
      # Add a simple test to verify the installation works
      system bin/"music-librarian", "--version"
      # Or test importing the module if it's library-focused
      # system libexec/"bin/python", "-c", "import music_librarian"
    end
  end
