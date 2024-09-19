class RipassoCursive < Formula
  desc "Simple 'pass' compatible password manager"
  homepage "https://github.com/cortex/ripasso"
  url "https://github.com/cortex/ripasso/archive/refs/tags/release-0.7.0.tar.gz"
  sha256 "81402cda26024577d7ce2b4ac51e671c0643ee7f3e759e7efebeb7e1e1cf7ca5"
  license "GPL-3.0-only"

  depends_on "libxcb" => :build
  depends_on "pkg-config" => :build
  depends_on "rust" => :build
  depends_on "gpgme"
  depends_on "libgpg-error"
  depends_on "nettle"

  uses_from_macos "llvm" # for libclang

  on_linux do
    depends_on "libxcb"
  end

  def install
    ENV["SHELL_COMPLETIONS_DIR"] = buildpath
    system "cargo", "install", "ripasso-cursive", *std_cargo_args(path: "cursive")

    man1.install "target/man-page/cursive/ripasso-cursive.1"
  end

  test do
    require "pty"
    require "io/console"

    begin
      r, w, = PTY.spawn bin/"ripasso-cursive"
      r.winsize = [80, 43]
      sleep 10
      w.write "{ESC}"

      out = ""
      iterations = 0
      while (out.exclude? "Ripasso") && (iterations < 1000)
        out += r.sysread(400)
        iterations += 1
      end
      assert iterations < 999
    rescue Errno::EIO
      # GNU/Linux raises EIO when read is done on closed pty
    end
  end
end
