# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Canyon Holman, Cody Toone
## Summary
This lab taught us how to precisely slow down fast clocks using 2 types of counters. We implemented a Modulo Counter as well as a Ripple Counter. To implement these, we utilized past concepts such as T Flip Flops, D Flip Flops, and adders.
## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
A full output cycle of high/low/high requires 2 toggles, so the counter divides clocks by 2 * count.
### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
The first clock transition propagates through all the flip-flops because they're all set to 0 and they toggle on the rising clock edge.
### 3 - What width of ring counter would you use to get to an output of ~1KHz?
You would need a 100,000 bit wide ring counter: 100MHz/1kHz
