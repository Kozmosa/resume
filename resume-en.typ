#import "chicv.typ": *

#show: chicv

= #redact(alter: "roife")[Wu Jiayan]

  #fa[#phone] #redact(mark: true)[(+86) 000-0000-0000] |
  #fa[#envelope] roifewu\@gmail.com |
  #fa[#github] #link("https://github.com/roife")[roife] |
  #fa[#globe] #link("https://roife.github.io")[roife.github.io] |
  #fa[#location-arrow] Hong Kong

  == Education

    #cventry(
        tl: [Nanjing University],
        tr: [2023.09 - 2026.06 (expected)],
    )[Master's Degree in #emph[Computer Science and Technology] | #link("https://pascal-lab.net")[Pascal Lab]. Tutor: #redact(mark: true)[Place] Li | Focus on PL and Program Analysis]
    #cventry(
        tl: [Beihang University],
        tr: [2019.09 - 2023.06],
    )[Bachelor's Degree in #emph[Computer Science and Technology] | GPA 3.84/4.00]

  == Work Experience

    #cventry(
        tl: [NVIDIA OCG],
        bl: [GPU Compiler LLVM Backend Intern],
        tr: [2025.02 - Present]
    )[
        - Responsible for unifying the vectorizer between NVIDIA GPU graphics compiler and NVVM, ensuring the graphics compiler's vectorizer aligns with LLVM upstream
          - Added support for graphics intrinsics in the new vectorizer while minimizing divergence from upstream;
          - Ported several memory access vectorization optimizations to the new vectorizer, including offset gap filling, etc.;
    ]

    #cventry(
        tl: link("https://foundation.rust-lang.org/news/announcing-the-rust-foundation-s-2024-fellows/")[Rust Foundation Fellowship Program],
        bl: [Rust Foundation Open Source Community Grant],
        tr: [2024.09 - 2025.09],
    )[
        As one of the rust-analyzer maintainers, responsible for maintaining rust-analyzer (the official Rust IDE).
        - Ranked *21/972* in contributors; resolved *~70 issues*; participated in issues handling, meeting discussions, PR reviews, and other maintenance work across most project modules;
        - Implemented control flow navigation, snapshot test updates, and other features, while participating in bug fixes;
        - Wrote a *SIMD* implementation for the line breaking module for ARM NEON, achieving a *6.5x* speedup on ARM platforms;
        - *Emergency incident response for v0.3.1992*: 4 hours after release, the community discovered a critical bug causing resource exhaustion and process blocking. I identified the algorithmic issue *in 3 hours* and designed a new algorithm as fix. This emergency fix controlled the incident's impact, preventing disruptions for global Rust developers.
    ]

  == Awards

  - 2022 *National Scholarship* (ranked 1/195 in the major), *Outstanding Graduate* of Beihang University
  - *First Prize* in the #link("https://compiler.educg.net")[NSCSCC Compilation System Design Competition] (Huawei Bisheng Cup) 2021, ranking 2nd overall.
  - *First Prize* in the Lanqiao Cup C++ Programming Contest (Beijing Division) and *Third Prize* in the National Finals
  - Additionally awarded over ten provincial and university-level awards and scholarships
  
  == Projects

  #cventry(
      tl: [Vizsla],
      bl: [Modern IDE for Chip Frontend Design · Master's Thesis Project],
      br: [Rust / SystemVerilog],
      tr: [#ghrepo("roife/vizsla", icon: true) (WIP)],
  )[
      - Based on *incremental computation* architecture, implemented a semantic analysis framework and IDE infrastructure for SystemVerilog, aiming to provide modern IDE features for chip design;
      - Project achieves *industry-leading standards* in functionality, performance, and usability: implemented *dozens of* modern IDE features for SystemVerilog including code navigation, semantic refactoring, code completion, semantic highlighting, code diagnostics, etc., with *millisecond-level* latency through incremental semantic analysis;
      - Based on the Language Server Protocol, compatible with VS Code, Emacs, NeoVim and other mainstream editors.
  ]

  #cventry(
      tl: [Ailurus],
      bl: [Experimental Programming Language and Toolchain Design],
      br: [Rust],
      tr: [#ghrepo("roife/ailurus", icon: true) (WIP)],
  )[
      - Based on *Martin-Löf type theory*; supports *bidirectional type checking*, *dependent types*, pattern matching, indexed inductive types, module system, and other features;
      - Uses Normalization by Evaluation for equivalence checking, implements propositional equality;
  ]

  #cventry(
      tl: "Ayame",
      bl: [Compiler from SysY (C subset) to ARMv7 · Bisheng Cup Competition Project (Collaborative)],
      br: [Java / LLVM-IR / ARM],
      tr: ghrepo("No-SF-Work/ayame", icon: true),
  )[
      - Primarily responsible for backend optimizations targeting Machine IR, including graph-coloring based *iterative register merging*, *instruction scheduling*, and peephole optimizations;
      - Also handled project testing and DevOps, setting up testing workflows with Docker and GitLab CI, and writing Python scripts to automatically analyze test results;
      - Project ranked *2nd overall* in the competition, achieving *1st place in nearly half of the testcases* and outperforming `gcc -O3` and `clang -O3` on 1/3 of the examples.
  ]

  #cventry(
      tl: [LLVM-Lite],
      bl: [Lightweight Edge-side Compiler for Neural Network Operators · Undergraduate Thesis Project],
      br: [C++ / LLVM-IR],
      tr: ghrepo("roife/llvm-lite", icon: true),
  )[
      - Project aims to utilize known *shape information* from edge inference devices to perform *secondary optimization* on deep learning operators, reducing runtime spatial and temporal overhead;
      - Project includes a lightweight compiler and a trimmed LLVM codegen module; successfully reduced inference time by 6% and binary file size by 38% for convolution and softmax operators;
      - Implemented *parse-time optimizations* that reduced compilation time by 60% and memory usage by 60%; received *excellent* evaluation for the thesis.
  ]
  
  #cventry(
      tl: [#fa[#code.branch] Open Source Contributions],
  )[
      - *Rust Organization* (rust-analyzer contributors team) member, primarily maintaining #ghrepo("rust-lang/rust-analyzer", icon: true);
      - Also contributed to #ghrepo("rust-lang/rust", icon: true), #ghrepo("rust-lang/rust-clippy", icon: true), #ghrepo("rust-lang/rustup", icon: true), #ghrepo("rust-lang/rust-mode", icon: true);
      - #ghrepo("llvm/llvm-project", icon: true), #ghrepo("clangd/vscode-clangd", icon: true), #ghrepo("google/autocxx", icon: true), #ghrepo("yuin/goldmark", icon: true), #link("https://github.com/roife")[more projects on GitHub].
  ]

  == Skills

  - #emph[Programming Languages:] Not limited to specific language. Especially proficient in C, C++, Java, Rust, Python, JavaScript/TypeScript, Verilog/SystemVerilog. Comfortable with Ruby, Swift, OCaml, Coq, Haskell, Agda, etc.
  - #emph[PL Theory:] Familiar with *type systems* (e.g. Hindley-Milner), formal verification and theory of computation.
  - #emph[Compilers / Virtual Machines:] *4 YoE*. Proficient in full compiler pipeline development:
      - Familiar with various *IRs* (e.g., SSA, MLIR, DBI, ANF, etc.), *optimizations* (e.g., Mem2Reg, GVN/GCM, register allocation, instruction scheduling, auto-vectorization, etc.), and *GC algorithms* (Mark-Sweep, Copying, Mark-Copy, etc.);
      - Knowledgeable about LLVM and LLVM-IR; read through parts of LLVM optimizations, familiar with LLVM's codegen module and related optimizations;
      - Understanding of NVIDIA GPU compiler architecture and optimizations, familiar with NVVM IR and PTX instructions.
  - #emph[IDE Development:] *2 YoE*. Familiar with IDE architecture based on *incremental computation*, especially the architecture and implementation of rust-analyzer and clangd; knowledgeable about plugin development for mainstream editors like VS Code and Emacs, and proficient with the *Language Server Protocol* specification and implementation.
  - #emph[Program Analysis:] *2 YoE*. Familiar with common static analysis algorithms (e.g., dataflow analysis, interval analysis, IFDS, pointer analysis with different sensitivities, etc.).
  - #emph[System Programming:] Familiar with computer architecture and operating systems, capable of assembly-level development and debugging, knowledgeable about Docker, GDB, CMake, and other tools.
  - #emph[Development Environment:] Proficient in Emacs; comfortable working in macOS and Linux; skilled in leveraging AI tools.

  == Misc

  - *Languages*: Chinese (native), English (fluent)
  - *Teaching Assistant*: _Programming in Practice_ (Fall 2020), _Object-oriented Design and Construction_ (S.T.A.R. responsible for TA work and system maintenance / Fall 2021, Spring 2022), _Principles and Techniques of Compilers_ (Spring 2024).
