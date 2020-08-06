# OOPSLA '20 Artifacts #11 - README.md

> *Statically Verified Refinements for Multiparty Protocols*
>
> Fangyi Zhou, Francisco Ferreira, Raymond Hu, Rumyana Neykova and Nobuko Yoshida

Our [paper](...TODO...) presents **Session&#42;**, a toolchain for
specifying message passing protocols using **Refined Multiparty Session Types**
and safely implementing the distributed endpoint programs in **F&#42;**.

This artifact submission contains the following:

- An [overview](...TODO...) of the artifact (this document).
- The main artifact, a [Docker image](...TODO...).
- The [md5 hash](...TODO...) of the Docker image.

This overview describes the steps to assess the practical claims of the
paper using the artifact.

1. **Getting Started**  
    [1.1.](...TODO...) Run the Artifact (Docker image)  
    &nbsp;&nbsp;&nbsp;&nbsp;[1.1.1.](...TODO...) Artifact Layout  
    [1.2.](...TODO...) Quick Test: Examples  
    [1.3.](#step-1-run-the-microbenchamarks-table-1-section-52-and-53)
          ...reproduces our benchmark methodology for Table 1 (Sections 5.2 and 5.3).  
    [1.4.](#step-2-compile-applications-implemented-with-session-table-2-section-54)
          ...compiles **..and runs..** the examples listed in Table 2 (Section 5.4).
2. **Step-by-Step Instructions**  
    [2.1](#step-1-execute-the-runnign-example)
         ...runs through the main example (HigherLower) of the paper (Section 2).  
    [2.2](...TODO...) ...observe refinement violations  
    [2.3](...TODO...) ...run through other examples (optional)
3. **Additional Information**  
    [3.1.](...TODO...) ...toolchain overview  
    &nbsp;&nbsp;&nbsp;&nbsp;[3.1.1.](...TODO...) ...discrepancies between the artifact and the paper  
    &nbsp;&nbsp;&nbsp;&nbsp;[3.1.2.](...TODO...) ...Syntax of Refined Scribble  
    [3.2.](#s#step-2-observe-refinement-violations) ...implementing your own
          protocols ...you can test and modify any of the above example, as well as
          implement and verify your own protocols using our toolchains  
    [3.3.](#step-3-run-other-example-optional) ...debugging tips


---  
---
## 1. Getting Started

---
#### 1.1 Run the Artifact (Docker Image)

For the OOPSLA'20 artifact evaluation, please use the **..docker file..**
provided:

0. [Install docker](https://docs.docker.com/engine/install/).
1. Run the docker container:  ...**TODO**: update to use provided image
    ```
    docker run -it docker.pkg.github.com/sessionstar/oopsla20-artifact/artifact:latest
    ```
    Note: if you get the error: no authentication, then login to docker:
    ```
    ~/TOKEN.txt | docker login https://docker.pkg.github.com -u USERNAME --password-stdin
    ```
    where TOKEN.txt should contain your Github authentication token (see how to
    generate one
    [here](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token)).
2. The Docker image comes with a Vim installation.  ...**If you prefer to use your
   own locally installed editor, you may try a [docker directory
   mount](https://docs.docker.com/storage/bind-mounts/).**
   - ...apt-get install...
3. The instructions in this overview assume you are in the
   `/home/sessionstar/examples` directory.  ...**CHECKME**: e.g., next subsec
   - Note.  This document contains some folded paragraphs:
        <details>
        <summary>
           <b>Click</b> to unfold...
        </summary>
        ...and see the details.
        </details>


#### 1.1.1. Artifact Layout

The artifact is clone of this [commit](...TODO:https://github.com/sessionstar/oopsla20-artifact...) in the sessionstar GitHub repository.  It contains the following.

* [`/scribble-java`](...TODO...) and [`/ScribbleCodeGenOCaml`](...TODO...) --
  these comprise the full source code of the toolchain.
    * The `sessionstar` command, available on the command line `$PATH`,
      performs the Scribble protocol to F* API generation (e.g., the F*
      callback signatures); see [Part II (Step I)](...TODO...).
* [`/scripts`](examples/scripts) -- the scripts for executing the
  benchmarks from Table 1 and Table 2.
* [`/examples`](examples/) -- the source code for the various examples,
  including the HigherLower running example from the paper (Section 2) and
  those listed in Table 2.
* [`/template`](template/) -- template files to help you through writing
  and testing your own examples.


---
#### 1.2. Test that all examples can be executed

We have provided several scripts that allow you to quickly test the main claims
of the paper.
A step by step explanation on how to use the toolchain, and how to test each
example separately is deferred to [Part II](...TODO...) of this document.

```
cd examples
make
make run
```
The above script verifies and executes all implemented examples.  


---
#### 1.3.  Run the microbenchamarks (Table 1, Section 5.2 and 5.3)

The purpose of this set of benchmarks is to demonstrate the scalabilty of our tool on protocols of increasing length (as explained in Section 5.2). We also measure the execution overhead of our implementation by comparing it against an implementation without session types or refinement types, which we call bare implementation (as explained in Section 5.3).

To execute the benchmarks run:

```
python3 scripts/pingpong.py
```

The produced table (which corresponds to Table 1 from the paper) contains the following columns. In brackets we give the name of the corresponding columns from Table 1.
* ```Gen Time (CFSM)``` - the time taken for Scribble to generate the CFSM (```CFSM```)
* ```Gen Time (F\*)``` - the time taken for the code generation tool to convert the CFSM to F\*. (```F\* APIs```)
* ```TC Time (Gen.)``` - the time taken for the generated APIs to type-check in F\⋆(```Gen. Code```)
* ```TC Time (Impl)``` - the time taken to time check the implementation (```Callbacks```)

The script runs the example 30 times and displays the average.
(TODO: 1. explain the option to adjust n, 2. option to adjust how many times the example are run; 3.explain the option to run remotely)

**Note:** The result in the paper run the experiments under a network of latency of 0.340ms (64 bytes ping), while the script runs the examples in the same docker container.  


---
#### 1.4. Compile applications implemented with **Session&#42;** (Table 2, Section 5.4)

The purpose of these set of benchmarks is to show the expressivity of our toolchain. We have taken examples
from the session type literature, and have added refinements to encode data dependencies in the protocols (as explained in Section 5.4).

To run all examples at once:
```
python3 scripts/examples.py
```
The produced table corresponds to Table 2 from the paper.
It contains the same columns as the table produces in Step 1. Note that Table 2 from the paper reports:
- the total generation time, which is a sum of the ```Gen Time (CFSM)``` and ```Gen Time (F*)``` from the produced table.
- the total time checking time, which is a sum of ```TC Time (Gen.)``` and ```TC Time (Impl)``` from the produced table.

The source code (protocols and implementations) for each of these examples is located in a separate folder.


---  
---

## Step-by-Step Instructions

...A walk-through tutorial


---
#### 2.1.  Execute the Running Example
The purpose of this section is to give you a quick walk through of using the toolchains to implement and verify a protocol. We focus on the running example - [HigherLower.scr](/examples/HigherLower)

:one: **Generate.**
The first step of our toolchain is the generation of callback signatures from Scribble protocols. The ```sessionstar``` command takes a file name, a protocol name and a role. To generate the callback file for role A for the HigherLower protocol, i.e ```HigherLower/HigherLower.scr```:
 ```
 sessionstar HigherLower/HigherLower.scr HigherLower A
 ```
 The ```sessionstar``` command  (1) generates a CFSM and (2) produces the callback signatures in F*. It produces the corresponding files:
   -  ```HigherLower_A.fsm``` - contains the CFSM for role A  
   -  ```GeneratedHigherLowerA.fst``` - contains the generated API, as callback signatures, for role A.

:two: **Implement and compile.**
A user has to implement the program logic for each callback from the generated API file (```GeneratedHigherLowerA.fst```).

<!-- A sample implementation of role A is given in ```HigherLower/HigherLowerA_CallbackImpl.fst```. -->

After we implement the program logic for role A  using the callback signatures produced in the previous step, we can verify that the implementation is correct by running the F* type checker.

 A sample implementation of role A is given in ```HigherLower/A/HigherLowerA_CallbackImpl.fst```. To compile this implementation for endpoint A, we first move the generated file to the correct folder, and then we build the endpoint using the F* compiler:
```
mv GeneratedHigherLowerA.fst HigherLower/A
make -C HigherLower/A main.ocaml.exe
```
 The above command generates the binary for role A,  ```main.ocaml.exe```.


:three: **Execute.**
Repeat the above steps (generation and compilation for role B and C). After all endpoints have been implemented and their binaries have been generated, we can run them.
 To run all endpoins issue all the commands:
```
HigherLower/B/main.ocaml.exe &
HigherLower/C/main.ocaml.exe &
HigherLower/A/main.ocaml.exe &
```
 The above command runs the three endpoins, i.e A, B and C.


---
#### 2.2.  Observe Refinement Violations

Next we highlight how protocol violations are ruled out by static refinement typing, which is ultimately the practical purpose of **Session&#42;**.

(a) **Refinement violations:** Change the implementation for role B.
Below we suggest two modifications.

 First, ensure that the current implementation is correct:
```
sessionstar HigherLower/HigherLower.scr HigherLower C
mv GeneratedHigherLowerC.fst HigherLower/C
make -C HigherLower/C main.ocaml.exe
```
  After each modification, compile and observe that an error is reported. Note that since we are not changing the protocol, you do not need to run sessionstar again, it is enough to run the F* type checker using ```make -C HigherLower/C main.ocaml.exe```

 Suggested modifications:
 - Modify the condition for the lose case ([Line 32](https://github.com/sessionstar/oopsla20-artifact/blob/4061441dbdea9cb4ec7567af4e0efb2390174359/examples/HigherLower/B/HigherLowerB_CallbackImpl.fst#L32)) from ```t >0``` to ```t=0```

 - Comment the lose case ([Line 32-33](https://github.com/sessionstar/oopsla20-artifact/blob/4061441dbdea9cb4ec7567af4e0efb2390174359/examples/HigherLower/B/HigherLowerB_CallbackImpl.fst#L32)).
Note: the syntax for comments in F* is (* commented code *).

(b) **Use of proof-irrelevant variables:** To demonstrate how our toolchain uses reasoning with latent information, we will modify the protocol HigherLower, and we will compile the  implementation for role C.

First, we verify that the implementation of C is correct:
```
sessionstar HigherLower/HigherLower.scr HigherLower C
mv GeneratedHigherLowerC.fst HigherLower/C
make -C HigherLower/C main.ocaml.exe
```
Suggested modifications:
  - Modify the implementation such that the higher case sends a variable that is lower than the current one. For example change Line [34](https://github.com/sessionstar/oopsla20-artifact/blob/4061441dbdea9cb4ec7567af4e0efb2390174359/examples/HigherLower/C/HigherLowerC_CallbackImpl.fst#L34) from ```next := (Mkstate72?.x st) + 1)``` to ```next := (Mkstate72?.x st) - 1)```. Compile the endpoint (```make -C HigherLower/C main.ocaml.exe```) to observer an error.

  - Modify the protocol by removing all constraints for x that depend on n.
    - Change [Line 19](https://github.com/sessionstar/oopsla20-artifact/blob/4061441dbdea9cb4ec7567af4e0efb2390174359/examples/HigherLower/HigherLower.scr#L19) from ```@'n>x && t>1'``` to ```@'t>1'```
    - Change [Line 23](https://github.com/sessionstar/oopsla20-artifact/blob/4061441dbdea9cb4ec7567af4e0efb2390174359/examples/HigherLower/HigherLower.scr#L23) by commenting ```n=x'``` (comment in Scribble is \\\ )
    - Change [Line 30](https://github.com/sessionstar/oopsla20-artifact/blob/4061441dbdea9cb4ec7567af4e0efb2390174359/examples/HigherLower/HigherLower.scr#L30) from @'((n<x || n>x) && t=1)' to ```@'t=1'```

   Since we changed the protocol, new callback signatures have to be generated. Generate new callback signatures and compile:     
 ```
 sessionstar HigherLower/HigherLower.scr HigherLower C
 mv GeneratedHigherLowerC.fst HigherLower/C
 make -C HigherLower/C main.ocaml.exe
 ```

#### :exclamation:__Note__ on syntax discrepancies:

There are small syntax discrepancies between Scribble syntax and the paper.

TODO: A quick explanation on the main differences...

For details, see the [notes on Scribble syntax](README.md#notes-on-scribble-syntax).


---
#### 2.3. Run Through Other Examples (Optional)

To build a selected example from Table 2:
```
make build-[name of the example]
```

To run a selected example from Table 2:
You can run them using:
```
make run-[name of the example]
```

See the [Makefile](examples/Makefile) for more details.  

Each examples is in a separate folder. The folder contains:
- The protocol, specified in Scribble - a file with extension .scr
- a folder for each role in a protocol. Each role folder contains:
  - Generated API file (automaticaly generated by the toolchain) - the name convention of such files is Generated[ProtocolName][RoleName].fst. Note that this file will be generated only after running the ```sessionstar``` command on the target protocol.
  - Callback Implementation file (specific to the implementation, should be implemented by the user)- the name convention of such files is [ProtocolName][RoleName]_CallbackImpl.fst
  - Boilerplate files (non-specific to the implementation):
    - Payload.fst - specifies serialisation of the payload types (e.g int, strings)
    - Network.fst - standard communication functions for send/receive



Below we briefly explain each example:
<details>
  <summary>Two Buyer</summary>

- source folder:  [examples/TwoBuyer](examples/TwoBuyer)
- explanation:Two Buyer is a canonical example for demonstrating business logic interactions. It specifies a negotiation between two buyers and
a seller  to  purchase a book;

</details>
<details>
  <summary>Negotiation</summary>

- source folder:  [examples/Negotiation](examples/Negotiation)
- explanation: This is a Service Agreement Proposal protocol.

</details>
<details>
  <summary>Fibonacci</summary>

- source folder:  [examples/Fibonacci](examples/Fibonacci)
- explanation: It computes a fibonacci number requested by a client.

</details>
<details>
  <summary>Travel Agency</summary>

- source folder:  [examples/TravelAgency](examples/TravelAgency)
- explanation: Travel Agency is from a W3C Choreographies use case.

</details>
<details>
  <summary>Calculator</summary>  

- source folder:  [examples/Calculator](examples/Calculator)
- explanation: a distributed service for arithmetic operations (+, -). The recursive protocol allows a client to repeatedly send an operation request with two numbers, and receive back the result.

</details>
<details>
  <summary>SH</summary>

  - source folder:  [examples/SH](examples/SH)
  - explanation:  SH is short for Sutherland-Hodgman algorithm. It is a 3-role protocol for polygon clipping. It takes a plane, and the vertices of a polygon as a series of points; and produces vertices for
the polygon restricted to one side of the plane.
</details>
<details>
  <summary>OnlineWallet</summary>

- source folder:  [examples/Online Wallet](examples/OnlineWallet)
- explanation: This is the running example from [Neykova et al. 2013].
It represents an online payment application.

</details>
<details>
<summary>Ticket</summary>

- source folder:[examples/Ticket](examples/Ticket)
- explanation: This is the running example from [Bocchi et al. 2013], where a customer negotiates with teh bank for buying a ticket. The protocol is recursive.

</details>
<details>
  <summary>HTTP</summary>

- source folder:  [examples/HTTP](examples/HTTP)
- explanation: It is minimal specification of the [Hypertext Transfer protocol](https://tools.ietf.org/html/rfc2616) protocol. We have  implemented an HTTP server in F*. The example can interoperate with HTTP clients, e.g Chrome, Firefox, etc.

</details>  


---  
---
## 3. Additional Information

---
#### 3.1. Toolchain Overview

The following is a quick recap of the **Session&#42;** toolchain, as
presented in the paper.

**In a nutshell.**
The toolchain allows users to specify, implement and verify <em>refined</em>
multiparty protocols and programs.  Protocol specifications are based on our
Refined Multiparty Session Types (RMPST), which express data dependent
protocols via refinement types on interactions and message payloads, i.e.,
protocols with logical constraints on message value and control-flow.

**How.**
Users write protocol specifications in our extension of the
[Scribble](scribble.org) protocol description language, and implement the
endpoint programs in [F*](fstar.org) using refinement-typed APIs generated from
the protocol by the toolchain.  The F* compiler statically verifies each
endpoint program and its refinements to ensure that the program follows the
protocol.

The steps of the toolchain, as exercised in [2.1](...TODO...), are outlined
below (the figure corresponds to Fig. 2 in the paper).  

<img src="images/framework_overview.png" width=1000></img>

The **Session&#42;** starts by writing the protocol in our extended Scribble:
this artifact supplies the protocols for all the examples in the paper.
This overview then runs through the following steps.

- :one: **Generate** -- for each role in a given Scribble protocol, we generate
  an F* API for implementing that role (by way of a CSFM representation).
  This is done using the ```sessionstar``` command, which is available on the
  command line path in the artifact conatiner and produces the following files.  
  Outputs: (a dot file representation of the CFSM) and an F* API file.  
- :two: **Implement and compile** -- the user supplies the application logic
  for each endpoint by implementing the I/O callback function types of the
  generated API.  The implementation is verified by the F* compiler.  
  Outputs: executable binaries.
- :three: **Execute** -- with a well-typed endpoint program for each role, we
  can execute the protocol.  For this artifact, we run all endpoints within the
  same container as separate processes communicating asynchronously via TCP
  localhost (i.e., with the same communication semantics as geographically
  distributed TCP connections).  
  Outputs: safe execution of the refined multiparty protocol.

**Properties of the toolchain.**
The paper (Section 4) establishes Trace Equivalence (Theorem 4.8) between
global protocols and endpoint projections, and Preservation of Well-Formedness
(Theorem 4.10) and Progress (Theorem 4.11) for well-formed global protocols.
Our toolchain confers these properties to a system of well-typed endpoint
programs with the following notes.
- By default, the APIs generated by our toolchain permit the arbitrary `ML`
  effect of F* in I/O callbacks.  Technically, this allows an endpoint program
  to locally feature, e.g., exceptions, which might in turn impact the progress
  of its peer programs.  Nevertheless, there are useful and "non-harmful"
  effects, such as **..printing and refs..**  Alternatively, the APIs could be
  generated with stricter effect constraints (the strictest being `Tot`, for
  terminating expressions without side-effects).
- The above point concerns progress.  **Regardless, our toolchain guarantees that
  execution is free of communication errors and deadlocks**.  (Deadlock refers
  to the safety error of a wait-for cycle between two or more endpoints.)


#### 3.1.1.  Discrepancies between the Paper and the Artifact

There are a few discrepancies between the implementation of our extended
Scribble in the artifact and that presented in the paper.

- There are small syntactic differences.
    - Refined state variable declarations were written in the paper: e.g.,
      Fig. 3
      ```
      aux global protocol Aux(role A, role B, role C) 
                                          @'B[n: int{0<=n<100}, t: int{0<t}]
      ```
      whereas the implementation in the artifact requires syntax like:
      ```
      aux global protocol Aux(role A, role B, role C)
                          @'B[n: int = 0, t: int = 1] (0<=n && n<100) && 0<t
      ```
      Our implementation requires state variables to be declared with an
      initial expression (which happen to be irrelevant to the HigherLower
      example), and the refinements of each variable to be written as a
      combined assertion following the declarations.
    - The code in the paper uses some compacted notation (e.g., &leq;, &wedge;)
      which the implementation requires in longer form (e.g., `<=`, `&&`).
- Our implementation of Scribble includes an additional protocol validation
  step prior to the F* API generation. **..This validation is an optional
  bonus, and is not required to support the properties described above...**

##### 3.1.2. Syntax of Refined Scribble

The following introduces the syntax of our Refined Scribble extension by
example.

```
module Foo;  // Foo.scr

type "int";

// CHECKME: top-level state vars and init exprs in F* API?
global protocol MyProto(role A, role B, role C) @'A[xA]' {
    1(x1: int) from A to B;  @'...'
    2(x2: int) from A to C;  @'y=x'
    do MyProtoAux(A, B, C); 
}

aux global protocol MyProtoAux(role A, role B, role C) @'A[x2] B[x3]' {
    1(x: int) from A to B;  @'...'
    choice at A {
        2() from B to C;
    } or {
        3() from B to C;
        do MyProtoAux(A, B, C);
    }
}
```

- correspond to formal syntax
- directed choice?
- do -- inlining -- allows recursion
- tail recursive
- merge
- int only? -- depends on Z3


---
#### 3.2. Implementing your own protocols (Optional)

Create a simple calculator protocol, following the short tutorial here.

Hint: If you are struggling, the Calculator folder contains the full implementation, and you can use it for reference.


---
#### 3.3. Additional information (Debugging tips)
* If you have problems compiling the examples, try:
  * rm .depend;
  * make clean-[example-name]
* A socket error ECONNREFUSED:
  * the error indicates that you have not started the roles in the expected order, you should always start the server role first.
<!-- P.S The (current) readme is here https://github.com/fangyi-zhou/FluidSession -->
