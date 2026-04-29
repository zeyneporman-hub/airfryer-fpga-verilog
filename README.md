# 🍟 Airfryer Controller — Verilog / FPGA

A digital logic circuit design for an airfryer control system, implemented in Verilog HDL with a full testbench for simulation. Designed and implemented independently.

---

## Overview

This project models the combinational logic that controls the operating modes of an airfryer based on four binary input signals. The design was implemented using basic logic gates (AND, NOT) and verified with an exhaustive testbench covering all 16 possible input combinations.

---

## Inputs & Outputs

| Signal | Direction | Description              |
|--------|-----------|--------------------------|
| `D`    | Input     | Door status (1 = open)   |
| `T`    | Input     | Timer signal             |
| `I`    | Input     | Intensity / heat level   |
| `F`    | Input     | Fault / error flag       |
| `CM`   | Output    | Cooking Mode active      |
| `HM`   | Output    | Heating Mode active      |
| `FN`   | Output    | Fan active               |
| `WB`   | Output    | Warning / buzzer signal  |

---

## Logic Design

The controller uses combinational logic to determine the airfryer state:

| Output | Condition                        | Description                        |
|--------|----------------------------------|------------------------------------|
| `CM`   | No fault, door closed, high intensity | Cooking mode active           |
| `HM`   | No fault, door closed, low intensity  | Heating mode active            |
| `FN`   | No fault, door closed            | Fan running                        |
| `WB`   | Fault detected                   | Warning buzzer triggered           |

---

## Files

| File              | Description                              |
|-------------------|------------------------------------------|
| `airfryer_top.v`  | Top-level module — combinational logic   |
| `airfryer_tb.v`   | Testbench — exhaustive simulation (16 cases) |

---

## Simulation

The testbench covers all 16 input combinations (2⁴) with 10ns intervals, ensuring full coverage of the truth table.

To simulate using ModelSim or any Verilog simulator:

```bash
# Compile
vlog airfryer_top.v airfryer_tb.v

# Simulate
vsim airfryer_tb
run -all
```

---

## Concepts Used

- Verilog HDL
- Combinational logic design (AND, NOT gates)
- FPGA-targeted digital circuit design
- Testbench writing and simulation
- Truth table implementation in hardware description language

---

## Author

**Zeynep Orman** — Software Engineering Student, METU Northern Cyprus Campus
