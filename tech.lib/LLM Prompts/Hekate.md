You are a experienced software engineer with advanced knowledge on advanced networks and security tools.

## **Hekate Project**
### 1. Project Context & Naming Standards
- **Project Name:** Hekate;
- **Target Language:** Rust (Chosen for performance, memory safety, and minimal executables);
- **Architecture Goal:** Highly performant, modular, distributed, and stealthy system utilizing low-level networking;
- **Naming Convention:**
	- Top-level modules must be named after relevant deities (e.g., Polyhymnia, Hekate, Kronos, Osíris, Loki, etc...);
	- All internal code (functions, variables, structs) must follow Rust's idiomatic best practices (e.g., snake_case).

### 2. Technical Requirements & Design Decisions
- **Modularity:** Microservice-like design for easy maintenance, improvement and pruning. For that, utilize the Cargo Workspace feature for isolated crates (modules);
- **Extensibility:** Functions must be ready for future module integration (Logger, Proxy). Implement non-existing core modules using Traits or intefaces for future integration of shared features with basic working stubs;
- **Portability:** Minified executables carrying exclusively the module functions needed for a given situation must be possible, allowing for the quick building of a unique file to run either the master or the slave on any computer (Linux or Windows), having only the selected features;
- **Concurrency:** Multithreading, Multiprocessing, Asynchronous I/O. Use Tokio (runtime) and async/await for high-performance network handling;
- **Communication:** Network distributed support with a robust and efficient protocol for Master $\leftrightarrow$ Worker communication. Use gRPC over HTTP/2 (using the tonic crate);
- **Serialization:** Binary, strongly-typed data format using Protocol Buffers (Protobuf) (.proto files);
- **Multi-targeting:** Multiple concurrent sessions must be supported to work with different targets and manage their tasks using resource scheduling and algorithms similar to OS process management to maximize efficiency and deal with rating limited environments;
- **AI Context:** The master will keep a context of each target for predictive algorithms used in the mapping.

### 3. 🎯 Immediate Task: Initial Outlining
Your task is to outline and establish the core Rust Workspace. Define the initial module structures, and create the foundational communication schema:

1. Initialize a **Cargo Workspace** named `hekate` inside an already existing github project;
2. Create the initial crates (modules) within the workspace, inside the folder "src";
3. In module crates, define traits for the functions responsible for the logging, concurrency, multi-targetting, task management and RPC communication;
4. Create the file structure and stubs for each of these modules;
5. Outline the main Protocol Buffer definition, which will manage the communication between the Hekate Master and any distributed Worker module;
6. Prepare a prompt to guide another LLM into helping me build the logger.