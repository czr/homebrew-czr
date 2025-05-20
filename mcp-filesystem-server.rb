class McpFilesystemServer < Formula
  desc "MCP Filesystem Server"
  homepage "https://github.com/mark3labs/mcp-filesystem-server"
  url "https://github.com/mark3labs/mcp-filesystem-server/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT" # Replace with actual license if different

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    output = shell_output("#{bin}/mcp-filesystem-server --version")
    assert_match "v0.9.0", output
  end
end