#import "../lib.typ": thesis-init, thesis-body

#show: thesis-init.with(
  abstract-cn: [
    本毕业设计主要设计自主研发的激光打靶系统的信号处理过程，继而实现整
    个打靶系统。激光打靶系统主要包括半导体激光枪、光电探测器和信号处理电路，
    信号处理过程是整个系统的关键。激光打靶的打靶过程，由激光枪发射激光脉冲
    信号，光电靶接收激光脉冲信号，经过系列信号处理过程最终得到打靶的结果。
    光电靶由许多块的光电探测器组成，每块不同位置的光电探测器对应不同编号，
    从打靶的实际情况出发，确定了相应的编号规则。打靶的成绩由激光所击中的光
    电探测器的编号来判定。

    激光打靶系统的主要信号处理过程包括：信号的放大、编码和数据传输。信
    号由光电探测器检测后传送到相应的放大电路，放大电路采用集成运算放大器。
    按原先对光电探测器的编码规则采用多路优先编码器对信号进行编码。最后把编
    码值以串口的形式传送到计算机，利用计算机的强大功能对打靶结果进行各种处
    理。与计算机之间的串行数据传输由 89C2051 单片机实现。89C2051 单片机的程
    序，使用 keil 编译器进行设计和调试完成，其主要功能是控制数据的串行传送，
    实现与计算机的串口通信。
  ],
  acknowledgement: [
    这里是致谢示例
  ],
  reference: bibliography("reference.bib"),
  appendix: [
    这里是附录示例
  ],
)


= 导　论

== 参考文献

参考文献可是这样用@蒋有绪1998@中国力学学会1990

== 列表

列表无明确格式要求

=== 无序列表

- 无序列表项一
- 无序列表项二
  - 无序子列表项一
  - 无序子列表项二

=== 有序列表

+ 有序列表项一
+ 有序列表项二
  + 有序子列表项一
  + 有序子列表项二

=== 术语列表

/ 术语一: 术语解释
/ 术语二: 术语解释

#pagebreak()

== 图表

引用@tbl:timing，引用@tbl:timing-tlt，以及@fig:test。引用图表时，表格和图片分别需要加上 `tbl:`和`fig:` 前缀才能正常显示编号。

#align(
  center,
  (
    stack(dir: ltr)[
      #figure(
        table(
          align: center + horizon,
          columns: 4,
          [t], [1], [2], [3],
          [y], [0.3s], [0.4s], [0.8s],
        ),
        caption: [常规表],
      ) <timing>
    ][
      #h(50pt)
    ][
      #figure(
        table(
          columns: 4,
          stroke: none,
          table.hline(),
          [t], [1], [2], [3],
          table.hline(stroke: .5pt),
          [y], [0.3s], [0.4s], [0.8s],
          table.hline(),
        ),
        caption: [三线表],
      ) <timing-tlt>
    ]
  ),
)

#figure(
  image("images/test.png", width: 20%),
  caption: [图片测试],
) <test>


== 公式

引用@eqt:test-equation

$ F_n = floor(1 / sqrt(5) phi.alt^n) $ <test-equation>
