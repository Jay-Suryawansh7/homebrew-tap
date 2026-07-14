class Solarch < Formula
  desc "TypeScript backend-as-a-service with SQLite, auth, realtime, and admin UI"
  homepage "https://github.com/Jay-Suryawansh7/Solarch"
  url "https://registry.npmjs.org/solarch/-/solarch-0.15.1.tgz"
  sha256 "cede857bee83d64db37f0abb8ad12f7e54b9471769d5275ea1d3b3b16ca7cf6f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(keep_bin: true)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/solarch", "--version"
  end
end
