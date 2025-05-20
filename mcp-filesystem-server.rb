class McpFilesystemServer < Formula
  desc "MCP Filesystem Server"
  homepage "https://github.com/mark3labs/mcp-filesystem-server"
  url "https://github.com/mark3labs/mcp-filesystem-server/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "da2c39dca2e3c08531f9d6763d651cf0bfe8be9d095ededb07aa83267e0a596c"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    output = shell_output("#{bin}/mcp-filesystem-server --version")
    assert_match "v0.9.0", output
  end
end