# Mass-Spring-Damper PID Control System

## Author: E.Borzouei

![MATLAB](https://img.shields.io/badge/MATLAB-Simulation-orange)
![Simulink](https://img.shields.io/badge/Simulink-Model-blue)
![Control](https://img.shields.io/badge/Control-PID-green)

## Overview
This project models and controls a **mass–spring–damper dynamic system** using a **PID controller**. The system is modeled using Newton’s second law, converted into a **state-space representation**, analyzed in **MATLAB**, and implemented in **Simulink**.

The objective is to improve the system dynamics by reducing overshoot, improving damping, and eliminating steady‑state error.

---

## Physical Model

A mass attached to a spring and damper with an external force input.

Equation of motion:

m x¨ + c x˙ + k x = F(t)

Where:

- m = mass
- c = damping coefficient
- k = spring constant
- F(t) = external force
- x(t) = displacement (system output)

Parameters used:

m = 1  
c = 5  
k = 20

---

## State Space Model

State variables:

x1 = x  
x2 = x˙

State equations:

ẋ1 = x2

ẋ2 = -(k/m)x1 − (c/m)x2 + (1/m)F(t)

Matrices:

A = [0 1; -20 -5]

B = [0; 1]

C = [1 0]

D = 0

---

## Open Loop Response

MATLAB step response results:

Overshoot ≈ 12%  
Settling Time ≈ 1.3 s

The system is **underdamped**, producing oscillations before settling.

---

## PID Controller Design

The controller was tuned in MATLAB using:

```
pidtune(sys,'PID')
```

Controller gains:

Kp = 40.3  
Ki = 111  
Kd = 3.67

Closed‑loop transfer function:

CL(s) = (K(s)G(s)) / (1 + K(s)G(s))

---

## Closed Loop Performance

Results after applying PID control:

Overshoot ≈ 2.4%  
Settling Time ≈ 1.25 s  
Steady State Error ≈ 0

The controller improves system damping and accuracy.

---

## Simulink Implementation

Blocks used:

- Step
- Sum
- PID Controller
- State-Space
- Scope

Closed-loop structure:

Step → Sum → PID → State-Space → Output
           ↑                    ↓
           └──── Feedback ──────┘

Simulation results match the MATLAB analysis.

---

## Project Structure

```
mass-spring-damper-control
│
├── matlab
│   └── model.m
│
├── simulink
│   └── mass_spring_pid.slx
│
├── report
│   └── analysis.md
│
└── README.md
```

---

## Running the Project

### MATLAB

Run:

```
model.m
```

This script:

- defines parameters
- builds the state-space model
- plots the step response
- designs the PID controller

### Simulink

1. Open MATLAB
2. Open the model

```
mass_spring_pid.slx
```

3. Click **Run**
4. View output in **Scope**

---

## Results Comparison

| Metric | Open Loop | PID Controlled |
|------|------|------|
| Overshoot | ~12% | ~2.4% |
| Settling Time | ~1.3 s | ~1.25 s |
| Steady State Error | Small | ≈ 0 |

---

## Tools

- MATLAB
- Simulink
- Git

---
