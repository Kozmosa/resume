#import "chicv.typ": *

#show: chicv

= #redact(alter: "roife")[占位符]

  #fa[#phone] #redact(mark: true)[00000000000] |
  #fa[#envelope] roifewu\@gmail.com |
  #fa[#github] #link("https://github.com/roife")[roife] |
  #fa[#globe] #link("https://roife.github.io/about")[roife.github.io] |
  #fa[#location-arrow] 北京 / 上海 / 杭州

  == 教育背景

    #cventry(
        tl: [南京大学],
        tr: [2023.09 - 2026.06（预计）],
        bl: [硕士，计算机科学与技术｜#link("https://pascal-lab.net")[Pascal Lab]，导师：李#redact(mark: true)[占]｜研究方向为程序语言、程序分析与 HDL],
    )[]
    #cventry(
        tl: [北京航空航天大学],
        tr: [2019.09 - 2023.06],
        bl: [本科，计算机科学与技术｜GPA 3.84/4.00],
    )[]

  == 工作经历

    #cventry(
        tl: link("https://foundation.rust-lang.org/news/announcing-the-rust-foundation-s-2024-fellows/")[Rust Foundation Fellowship Program],
        tl_comments: redact(alter: "")[（全球共 20 人入选）],
        tr: [2024.09 - 2025.06],
    )[
        - *维护 rust-analyzer*
          - 社区贡献*排名 21/972*，解决*超过 60 个 issues*；参与维护语义分析、类型检查等多个模块，并为项目添加了多项新功能，如*控制流导航*、*泛型约束展示*等；
          - 为 rust-analyzer 的断行算法编写了 NEON 下的 *SIMD* 实现，使得该模块在 ARM 平台上提速 *6.5 倍*；
          - *解决 v0.3.1992 P0 事故*：社区在发版 4 小时后发现会导致资源耗尽且无法结束进程的恶性 BUG。本人在 *3 小时内*定位到错误算法，并设计新算法解决了问题。该紧急修复控制了事故影响范围，避免影响全球 Rust 开发者的工作。
        - *开源社区日常维护*：参与社区日常维护工作，包括 steering meetings 讨论，BUG 修复，PR 审核等。
    ]

  == 奖项荣誉

  - 2022 年*国家奖学金*（学年专业排名 1/195），北京航空航天大学*优秀毕业生*
  - 2021 年全国大学生计算机系统能力大赛 · 编译系统设计赛（华为毕昇杯）*一等奖，排名第二*
  - 蓝桥杯 C++ 程序设计竞赛北京赛区一等奖，国赛三等奖
  - 另获其他各类奖项与校级各类奖学金十余次
  
  == 项目开发

    #cventry(
        tl: [Vizsla],
        tl_comments: [ · 面向芯片开发的现代化 Verilog/SV IDE（Rust / SystemVerilog）],
        tr: [（开发中）],
    )[
        - （*独立*）负责设计并编写了 IDE 的核心架构和增量计算流程，并完成了大部分的功能开发；
        - 项目旨在为芯片设计配备现代 IDE 功能，已完成重构、语义补全等数十项现代 IDE 特性，以提升设计效率和代码质量；
        - 基于 LSP 协议和*增量计算*架构，实现了增量语义分析框架，功能、性能与可用性达到世界领先水平。
    ]

    #cventry(
        tl: [LLVM-Lite],
        tl_comments: [ · 面向深度学习神经网络算子的轻量级端侧编译器（C++ / LLVM）],
        tr: ghrepo("roife/llvm-lite", icon: true),
    )[
        - （*独立*）华为课题，在本科毕设中获*优秀*评价；项目由一个轻量端侧编译器和对 LLVM codegen 的裁剪工作组成；
        - 课题旨在利用端侧推理设备上神经网络的形状信息，对深度学习算子进行二次优化，以减少算子运行时的时空开销；
        - 成功将测试样例中的*运行时间降低了 6%*，并将*目标文件大小降低了 38%*。
    ]

    #cventry(
         tl: "Ayame",
         tl_comments: [ · C 子集到 LLVM-IR/ARMv7 的编译器，毕昇杯比赛项目（Java / LLVM / ARM）],
         tr: ghrepo("No-SF-Work/ayame", icon: true),
     )[
         - （*合作*）负责完成了图着色寄存器分配算法，以及面向体系结构的后端优化；并负责了本地 CI 和评测系统的搭建；
         - 该项目在比赛*近一半样例上排名第一*，并在 1/3 的样例上优化效果超越 `gcc -O3` 与 `clang -O3`。
    ]
  
    #cventry(
        tl: [开源社区贡献],
    )[
        - *Rust-lang Member*，rust-analyzer contributors team：工作集中在 #ghrepo("rust-lang/rust-analyzer", icon: false)，同时也贡献过 #ghrepo("rust-lang/rust", icon: false) #ghrepo("rust-lang/rust-clippy", icon: false)，#ghrepo("rust-lang/rustup", icon: false)，#ghrepo("rust-lang/rust-mode", icon: false) ；
        - #ghrepo("llvm/llvm-project", icon: false)，#ghrepo("clangd/vscode-clangd", icon: false)，#ghrepo("google/autocxx", icon: false)，#ghrepo("yuin/goldmark", icon: false)，#link("https://github.com/roife")[更多项目见 GitHub]
    ]

  == 专业技能

  #grid(
      columns: (auto, auto),
      rows: (auto, auto, auto, auto, auto),
      gutter: 7pt,
      [*编程语言*], grid_par[多语言。特别熟悉 C, C++, Rust, Java, Python, Verilog；较熟悉 JS, Ruby, Swift, OCaml, Coq, Haskell 等。],
      [*程序语言理论*], grid_par[了解形式语言、计算理论、形式语义和形式化验证的相关知识，熟悉*类型系统*的理论和实现。],
      [*编译器 / IDE*], grid_par[*4 年开发经验*。熟悉编译优化和多种中间代码表示（如 SSA, CPS 等）；对 LLVM 有一定了解；熟悉基于 LSP 协议和基于*增量计算*的 IDE 架构，尤其熟悉 rust-analyzer。],
      [*程序分析*], grid_par[*2 年开发经验*。熟悉常见静态分析算法（如数据流分析、指针分析、IFDS 等）。],
      [*系统编程*], grid_par[了解体系结构和操作系统底层知识，能进行底层的开发调试工作，熟悉 Docker、CMake 等常用工具。],
      [*开发环境*], grid_par[熟悉 Emacs；习惯在 macOS 和 Linux 环境下工作；能熟练使用 AI 提高工作效率。]
  )

  == 其他

    - *外语*：英语（CET-6）；
    - *助教工作*：*程序设计基础*（2020 秋），*面向对象设计与构建*（2021 秋，2022 春），*编译原理*（2024 春）。
