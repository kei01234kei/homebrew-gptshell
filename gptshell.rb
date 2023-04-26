# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Gptshell < Formula
    desc "shell for chat gpt"
    homepage "https://github.com/kei01234kei/gptshell"
    url "https://github.com/kei01234kei/gptshell/releases/download/v1.0.0/gptshell"
    sha256 "fd52f8316b8d6e7f4d3cfa0e6739200a433b5724fc5a9b6374b1749ec819c751"
    license "MIT"
  
    # depends_on "cmake" => :build
  
    def install
      # ENV.deparallelize  # if your formula fails when building in parallel
      # Remove unrecognized options if warned by configure
      # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
      # system "./configure", *std_configure_args, "--disable-silent-rules"
      bin.install "gptshell"
      # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    end
  
    test do
      # `test do` will create, run in and delete a temporary directory.
      #
      # This test will fail and we won't accept that! For Homebrew/homebrew-core
      # this will need to be a test that verifies the functionality of the
      # software. Run the test with `brew test chat_gpt_shell`. Options passed
      # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
      #
      # The installed folder is not in the path, so use the entire path to any
      # executables being tested: `system "#{bin}/program", "do", "something"`.
      # system "false"
      system "true"
    end
  end
