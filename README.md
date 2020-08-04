The purpose of this document is to describe in details the steps required to assess the artifact associated with our paper.
We would like you to be able to:
* reproduce our benchmarks from Table 1, Section 5.2 and 5.3. For that purpose, complete [Part I (Step 1)](#step-1-run-the-microbenchamarks-table-1-section-52-and-53) of this document.
* compile the examples, reported in Table 2, Section 5.4. For that purpose, complete [Part I (Step 2)](#step-2-compile-applications-implemented-with-session-table-2-section-54) of this document.
* test the running example (HigherLower) from the paper, described in Section 2. For that purpose, complete [Part II (Step 1)](#step-1-execute-the-runnign-example)s of this document.

Additionally, you can test and modify any of the examples we have implemented (Part II, Step 2), as well as implement and verify your own protocols (Part II, Step 3) using our toolchain.

## Getting started

For the OOPSLA'20 artifact evaluation, please use the docker file provided:

1. Make sure you have docker installed ([install docker](https://docs.docker.com/engine/install/))
2. Run the docker container:
```
docker run -it fangyizhou/fluidsess:artifact-cand
```
<!--- 3. The docker file comes with a vim installation, if you prefer to use other editors or your local vim set-up, you should enable docker directory mount. See below... -->

In the following, we assume that you are in the ```/home/opam/scribbler/``` directory.
## Artifact layout

In addition to the source code of the library, which is a git clone of the [sessionstar repository](https://github.com/sessionstar/oopsla20-artifact), the artifact also contains
* a [scripts](examples/scripts) folder, which includes the scripts for producing the results from Table 1 and Table 2.
* an [examples](examples/) folder, which includes various examples, including the source for the running example from the paper, i.e HigherLower (Section 2), and the applications from Table 2.
* a [template](template/) folder that gives you template files and guides you through implementing and testing your own examples
* ```sessionstar``` command. The command generates F* callbacks from Scribble protocols (See Part II (Step I)).  

## Part I: Quick start
We have provided several scripts that allow you to quickly test the main claims of the paper.
A step by step explanation on how to use the toolchain, and how to test each example separately is deferred to Part II of this document.
#### Step 0: Test that all examples can be executed

```
cd examples
make
make run
```
The above script verifies and executes all implemented examples.  

#### Step 1: Run the microbenchamarks (Table 1, Section 5.2 and 5.3)

The purpose of these set of benchmarks is to demonstrate the scalabilty of our tool on protocols of increasing length (as explained in Section 5.2). We also measure the execution overhead of our implementation by comparing it against an implementation without session types or refinement types, which we call bare implementation (as explained in Section 5.3).

To execute the benchmarks run:

```
python3 scripts/pingpong.py
```

The produced table corresponds to Table 1 from the paper.
The script runs the example 30 times and displays the average.
(TODO: 1. explain the option to adjust n, 2. option to adjust how many times the example are run; 3.explain the option to run remotely)

**Note:** The result in the paper run the experiments under a network of latency of 0.340ms (64 bytes ping), while the script runs the examples in the same docker container.  


#### Step 2: Compile applications implemented with Session* (Table 2, Section 5.4)

The purpose of these set of benchmarks is to show the expressivity of our toolchain. We have taken examples
from the session type literature, and have added refinements to encode data dependencies in the protocols (as explained in Section 5.4).

To run all examples at once:
```
python3 scripts/examples.py
```
The produced table corresponds to Table 2 from the paper.
The source code (protocols and implementations) for each of these examples is located in a separate folder. The script measures the time taken for code generation and type-checking for each implementation.

## Part 2: A walk-through tutorial

#### Step 1: Execute the runnign example
The purpose of this section is to give you a quick walk through of using the toolchains to implement and verify a protocol. We focus on the running example - [HigherLower.scr](/examples/HigherLower)

* **generation**: the first step of our toolchain is the generation of callback signatures from Scribble protocols. The ```sessionstar``` command takes a file name, a protocol name and a role and it (1) verifies the protocol and (2) produces the callback signatures in F*

 To generate the callback file for role A for the HigherLower protocol, i.e ```HigherLower/HigherLower.scr```:
```
sessionstar HigherLower/HigherLower.scr HigherLower A
```
The above genrates a file (```GeneratedHigherLowerA.fst```) with callback signatures.

<!-- A sample implementation of role A is given in ```HigherLower/HigherLowerA_CallbackImpl.fst```. -->

* **compilation**: after we implement the endpoint using the callback signatures produced in the previous step, we can verify that the implementation is correct by running the F* type checker.

 A sample implementation of role A is given in ```HigherLower/A/HigherLowerA_CallbackImpl.fst```. To compile this implementation for endpoint A, we first move the generated file to the correct folder, and then we build the endpoint using the F* compiler:
```
mv GeneratedHigherLowerA.fst HigherLower/A
make -C HigherLower/A main.ocaml.exe
```
The above command generates the binary for role A,  ```main.ocaml.exe``` (
Note: Do not get confused by the .exe extension. This is not the Windows executable. It is a Ocaml convention. The file main.ocaml.exe does not exist in HigherLower/A folder.)


* **execution**: repeat the above steps (generation and compilation for role B and C). After all endpoints have been implemented and their binaries have been generated, we can run them.
 To run all endpoins:
```
HigherLower/A/main.ocaml.exe & HigherLower/B/main.ocaml.exe & HigherLower/C/main.ocaml.exe
```
 The above command runs the three endpoins, i.e A, B and C.

#### Step 2: Observe refinement violations

Next we highlight how protocol violations are ruled out by static refinement typing, which is ultimately the practical purpose of Session*.

* Refinement violations: Change the implementation for role B.
Below we suggest two modifications.

 First, ensure that the current implementation is correct:
```
sessionstar HigherLower/HigherLower.scr HigherLower C
mv GeneratedHigherLowerC.fst HigherLower/C
make -C HigherLower/C main.ocaml.exe
```
  After each modification, compile and observe that an error is reported. Note that since we are not changing the protocol, you do not need to run sessionstar again, it is enough to run the F* type checker using ```make -C HigherLower/C main.ocaml.exe```

 Suggested modifications:
 * 1. Modify the condition for the lose case ([Line 32](https://github.com/rhu1/fluidsess-examples/blob/7d7c895cf86b684435b6fa713d3f8e4410dd27a3/oopsla20/HigherLower/B/HigherLowerB_CallbackImpl.fst#L32)) from ```t >0``` to ```t=0```

 * 2. Comment the lose case ([Line 32-33](https://github.com/rhu1/fluidsess-examples/blob/7d7c895cf86b684435b6fa713d3f8e4410dd27a3/oopsla20/HigherLower/B/HigherLowerB_CallbackImpl.fst#L32)).
Note: the syntax for comments in F* is (* commented code *).

* Use of proof-irrelevant variables: To demonstrate how our toolchain uses reasoning with latent information, we will modify the protocol HigherLower, and we will compile the  implementation for role C.
 * First, we verify that the implementation of C is correct:
```
sessionstar HigherLower/HigherLower.scr HigherLower C
mv GeneratedHigherLowerC.fst HigherLower/C
make -C HigherLower/C main.ocaml.exe
```
We sugest the following modifications:
 * 2. Modify the implementation such that the higher case sends a variable that is lower than the current one. For example change Line X from + 1 to -1. Compile the endpoint (```make -C HigherLower/C main.ocaml.exe```) to observer an error.

 * 1. Modify the protocol by removing all constraints for x that depend on n.
   * Change [Line 19](https://github.com/rhu1/fluidsess-examples/blob/7d7c895cf86b684435b6fa713d3f8e4410dd27a3/oopsla20/HigherLower/HigherLower.scr#L19) from ```@'n>x && t>1'``` to ```@'t>1'```
   * Change [Line 23](https://github.com/rhu1/fluidsess-examples/blob/7d7c895cf86b684435b6fa713d3f8e4410dd27a3/oopsla20/HigherLower/HigherLower.scr#L23) by commenting ```n=x'``` (comment in Scribble is \\\ )
   * Change [Line 30](https://github.com/rhu1/fluidsess-examples/blob/7d7c895cf86b684435b6fa713d3f8e4410dd27a3/oopsla20/HigherLower/HigherLower.scr#L30) from @'((n<x || n>x) && t=1)' to ```@'t=1'```

   Since we changed the protocols, new callback signatures have to be generated. Generate new callback signatures and compile:     
 ```
 sessionstar HigherLower/HigherLower.scr HigherLower C
 mv GeneratedHigherLowerC.fst HigherLower/C
 make -C HigherLower/C main.ocaml.exe
 ```

#### __Note__ on syntax discrepancies:

There are small syntax discrepancies between Scribble syntax and the paper.

TODO: A quick explanation on the main differences...

For details, see the [notes on Scribble syntax](README.md#notes-on-scribble-syntax).

#### Step 3: Run other example (Optional)

To build a selected example from Table 2:
```
make build-[name of the example]
```

To run a selected example from Table 2:
You can run then using:
```
make run-[name of the example]
```

See the [Makefile](https://github.com/rhu1/fluidsess-examples/blob/master/oopsla20/Makefile) for more details.  

#### Step 2: Implementing your own protocols (Optional)

Create a simple calculator protocol, following the short tutorial here.

Hint: If you are struggling, the examples/Calculator folder contains the full implementation, and you can use it for reference.

<!--
##  Additional information
rm .depend; make; make main.ocaml.exe
P.S The (current) readme is here https://github.com/fangyi-zhou/FluidSession
-->
