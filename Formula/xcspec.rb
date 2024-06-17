class Xcspec < Formula
  desc "A tool to inspect iOS, macOS and Apple-like frameworks"
  homepage "https://github.com/eaceto/xcspec"
  version "1.0.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/eaceto/xcspec/releases/download/1.0.0/xcspec-macos-x86_64"
      sha256 "fd017dd27fd752f9a114bbdb3e9d9dc357d9651cabd8bbaa3680bdb622a0ebcf"
      def install
        bin.install "xcspec-macos-x86_64" => "xcspec"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/eaceto/xcspec/releases/download/1.0.0/xcspec-macos-arm64"
      sha256 "9dcc11b1067cf8a8472447dcf2734a67b5d3126f0c9b6c9592954e291f2ec630"
      def install
        bin.install "xcspec-macos-arm64" => "xcspec"
      end
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/eaceto/xcspec/releases/download/1.0.0/xcspec-linux-x86_64"
      sha256 "fb31f1d40ef0faed3de7d00f031bf7a2b67f5f93d5566cdba47bd1f04ab3aa1e"
      def install
        bin.install "xcspec-linux-x86_64" => "xcspec"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/eaceto/xcspec/releases/download/1.0.0/xcspec-linux-arm64"
      sha256 "8e844e32e2874b9fe40ae0394d9fee552c132dccf675d3518ac64852a4ac1ac2"
      def install
        bin.install "xcspec-linux-arm64" => "xcspec"
      end
    end
  elsif OS.windows?
    if Hardware::CPU.intel?
      url "https://github.com/eaceto/xcspec/releases/download/1.0.0/xcspec-windows-x86_64.exe"
      sha256 "655fc29e597fb04d2899992acf9ecd526933523f98db5ccfcb1553c3f9e0696a"
      def install
        bin.install "xcspec-windows-x86_64.exe" => "xcspec.exe"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/eaceto/xcspec/releases/download/1.0.0/xcspec-windows-arm64.exe"
      sha256 "d06c361b7e3ff10a217068d006abc482316d970e3791b0548f1413378a487545"
      def install
        bin.install "xcspec-windows-arm64.exe" => "xcspec.exe"
      end
    end
  end

  test do
    assert_match "xcspec, version", shell_output("#{bin}/xcspec --version")
  end
end
