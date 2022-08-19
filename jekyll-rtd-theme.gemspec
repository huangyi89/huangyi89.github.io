Gem::Specification.new do |spec|
  spec.name          = "Yi-Huang"
  spec.version       = "1.0"
  spec.authors       = ["Yi Huang"]
  spec.email         = ["1403116363@qq.com"]

  spec.summary       = "This is Yi Huang's blog"
  spec.license       = "MIT"
  spec.homepage      = "https://github.com/huangyi89/huangyi89.github.io"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "github-pages", "~> 209"
end
