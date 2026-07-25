┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃  ╭─────────────────────────────────────────────────────────────────────────╮  ┃
┃  │  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  │  ┃
┃  │  ▓  M O D E L   C A P A B I L I T Y   M A N I F E S T  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  │  ┃
┃  │  ▓  H E R M E S   A G E N T  •  O P E N R O U T E R  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  │  ┃
┃  │  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  │  ┃
┃  ╰─────────────────────────────────────────────────────────────────────────╯  ┃
┃                                                                              ┃
┃  ┌────────────────────────────────────────────────────────────────────────┐  ┃
┃  │  HARDWARE PROFILE                                                       │  ┃
┃  ├────────────────────────────────────────────────────────────────────────┤  ┃
┃  │  ┌─ GPU ────────────────────────────────────────────────────────────┐  │  ┃
┃  │  │  ████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  │  │  ┃
┃  │  │  NVIDIA GeForce GT 730 (Kepler, 2014)  │  VRAM: 2 GB GDDR3       │  │  ┃
┃  │  │  Compute: 3.5  │  CUDA Cores: 384    │  Tensor Cores: ✗ NONE    │  │  ┃
┃  │  └────────────────────────────────────────────────────────────────┘  │  ┃
┃  │  ┌─ CPU ────────────────────────────────────────────────────────────┐  │  ┃
┃  │  │  ████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  │  │  ┃
┃  │  │  Intel Core i5-4430 (Haswell, 2013)  │  4C/4T @ 3.0 GHz         │  │  ┃
┃  │  │  AVX2: ✓  │  AVX-512: ✗  │  AMX: ✗  │  QuickSync: ✗            │  │  ┃
┃  │  └────────────────────────────────────────────────────────────────┘  │  ┃
┃  │  ┌─ RAM ────────────────────────────────────────────────────────────┐  │  ┃
┃  │  │  ████████████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  │  │  ┃
┃  │  │  16 GB DDR3  │  Usable for CPU offload: ~12-14 GB                │  │  ┃
┃  │  └────────────────────────────────────────────────────────────────┘  │  ┃
┃  │  ┌─ INFERENCE STACK ────────────────────────────────────────────────┐  │  ┃
┃  │  │  Primary:  Hermes Agent → OpenRouter (cloud)                     │  │  ┃
┃  │  │  Local:    llama.cpp (NOT INSTALLED)  │  Ollama: ✗  │  vLLM: ✗  │  │  ┃
┃  │  └────────────────────────────────────────────────────────────────┘  │  ┃
┃  └────────────────────────────────────────────────────────────────────────┘  ┃
┃                                                                              ┃
┃  ══════════════════════════════════════════════════════════════════════════════
┃  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  R E A L I T Y   C H E C K  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
┃  ══════════════════════════════════════════════════════════════════════════════
┃                                                                              ┃
┃   ┌──────────────────────────────────────────────────────────────────────┐   ┃
┃   │  ▓  GT 730 (2 GB VRAM) CANNOT run modern LLMs on GPU  ▓              │   ┃
┃   │  ▓  No tensor cores • No FP16/BF16 • No INT8/INT4 acceleration  ▓    │   ┃
┃   │  ▓  384 Kepler cores ≠ 384 CUDA cores for ML  ▓                      │   ┃
┃   │  ▓  Even 1B models at Q4 need >2.5 GB VRAM with KV cache  ▓          │   ┃
┃   └──────────────────────────────────────────────────────────────────────┘   ┃
┃                                                                              ┃
┃   ┌──────────────────────────────────────────────────────────────────────┐   ┃
┃   │  ▓  CPU-ONLY (llama.cpp) is your ONLY local path  ▓                  │   ┃
┃   │  ▓  i5-4430 @ 3 GHz × 4 cores → ~2-5 tok/s on 7B Q4_K_M  ▓          │   ┃
┃   │  ▓  3B Q4_K_M → ~8-12 tok/s  │  1B Q4_K_M → ~25-40 tok/s  ▓        │   ┃
┃   │  ▓  Context window limited by RAM (16 GB → max ~13B Q4)  ▓          │   ┃
┃   └──────────────────────────────────────────────────────────────────────┘   ┃
┃                                                                              ┃
┃   ╭────────────────────────────────────────────────────────────────────╮    ┃
┃   │  ★  PRACTICAL SETUP:  Hermes + OpenRouter (cloud) = UNLIMITED    │    ┃
┃   │  ★  LOCAL FALLBACK:  Install llama.cpp, pull 1B-3B GGUF models   │    ┃
┃   ╰────────────────────────────────────────────────────────────────────╯    ┃
┃                                                                              ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

══════════════════════════════════════════════════════════════════════════════════
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  C A T E G O R Y   M A T R I X  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
══════════════════════════════════════════════════════════════════════════════════

┌────────────────────────────────────────────────────────────────────────────────┐
│  1️⃣  C O D I N G                                                               │
├──────────────────────┬─────────────────────────────────────────────────────────┤
│  ☁ CLOUD (OpenRouter)│  ◉  deepseek/deepseek-coder-v2.5           [BEST]       │
│  primary             │  ◉  anthropic/claude-3.5-sonnet                       │
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  💻 LOCAL (CPU only) │  ◉  qwen2.5-coder-1.5b-instruct-q4_k_m.gguf  ~12 tok/s │
│  @ 8+ tok/s          │  ◉  starcoder2-3b-q4_k_m.gguf                  ~8 tok/s │
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  📦 GGUF SOURCES     │  HuggingFace: Qwen/Qwen2.5-Coder-1.5B-Instruct-GGUF    │
│                      │  HuggingFace: bigcode/starcoder2-3b-GGUF               │
│  ⚙️  LLAMA.CPP CMD   │  llama-server -m qwen2.5-coder-1.5b-q4_k_m.gguf        │
│                      │    -c 4096 -ngl 0 -t 4 --port 8080                     │
└──────────────────────┴─────────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────────────────────────────────┐
│  2️⃣  S C R I P T I N G  (shell, python, glue code, automation)                │
├──────────────────────┬─────────────────────────────────────────────────────────┤
│  ☁ CLOUD             │  ◉  openai/gpt-4o-mini              [FAST & CHEAP]      │
│  primary             │  ◉  google/gemini-flash-1.5                                │
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  💻 LOCAL @ 8+ tok/s │  ◉  phi-3-mini-4k-instruct-q4_k_m.gguf         ~10 tok/s │
│                      │  ◉  qwen2.5-1.5b-instruct-q4_k_m.gguf            ~15 tok/s│
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  📦 GGUF SOURCES     │  HuggingFace: microsoft/Phi-3-mini-4k-instruct-GGUF      │
│                      │  HuggingFace: Qwen/Qwen2.5-1.5B-Instruct-GGUF            │
│  ⚙️  LLAMA.CPP CMD   │  llama-server -m phi-3-mini-4k-q4_k_m.gguf               │
│                      │    -c 4096 -ngl 0 -t 4 --port 8081                       │
└──────────────────────┴─────────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────────────────────────────────┐
│  3️⃣  G O O G L E   R E P L A C E M E N T   —   K N O W L E D G E   B A S E     │
├──────────────────────┬─────────────────────────────────────────────────────────┤
│  ☁ CLOUD             │  ◉  google/gemini-pro-1.5              [BEST RECALL]    │
│  primary             │  ◉  perplexity/sonar-pro              [SEARCH + CITE]   │
│                      │  ◉  openai/gpt-4o                       [REASONING]     │
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  💻 LOCAL @ 8+ tok/s │  ◉  phi-3-mini-4k-instruct-q4_k_m.gguf         ~10 tok/s │
│  (RAG-ready)         │  ◉  qwen2.5-3b-instruct-q4_k_m.gguf             ~8 tok/s │
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  📦 GGUF SOURCES     │  HuggingFace: microsoft/Phi-3-mini-4k-instruct-GGUF      │
│                      │  HuggingFace: Qwen/Qwen2.5-3B-Instruct-GGUF              │
│  🔧 RAG STACK        │  llama.cpp + sqlite-vec / chroma (local embeddings)      │
│                      │  Embedding model: bge-small-en-v1.5-q4_k_m.gguf (33M)    │
└──────────────────────┴─────────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────────────────────────────────┐
│  4️⃣  I M A G E   H A N D L I N G  (understanding, captioning, VQA, OCR)       │
├──────────────────────┬─────────────────────────────────────────────────────────┤
│  ☁ CLOUD             │  ◉  openai/gpt-4o                    [BEST GENERAL]     │
│  primary             │  ◉  anthropic/claude-3.5-sonnet       [REASONING]       │
│                      │  ◉  google/gemini-pro-1.5             [LARGE CONTEXT]   │
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  💻 LOCAL @ 8+ tok/s │  ⚠️  VISION MODELS NEED >2GB VRAM FOR DECENT SPEED      │
│                      │  ◉  llava-v1.6-mistral-7b-q4_k_m.gguf        ~3 tok/s  │
│                      │  ◉  moondream2-1.8b-q4_k_m.gguf              ~10 tok/s │
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  📦 GGUF SOURCES     │  HuggingFace: lmstudio-community/moondream2-GGUF         │
│                      │  HuggingFace: mys/llava-v1.6-mistral-7b-GGUF             │
│  ⚙️  LLAMA.CPP CMD   │  llama-server -m moondream2-1.8b-q4_k_m.gguf             │
│                      │    -c 2048 -ngl 0 -t 4 --port 8082 --mmproj mmproj.bin   │
└──────────────────────┴─────────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────────────────────────────────┐
│  5️⃣  F U L L   V I D E O   H A N D L I N G  (read + write + modify)           │
├──────────────────────┬─────────────────────────────────────────────────────────┤
│  ☁ CLOUD             │  ◉  RUNWAY Gen-3 / Luma Dream Machine   [GENERATION]   │
│  primary             │  ◉  Google Veo 2 / OpenAI Sora          [SOTA]         │
│                      │  ◉  Twelve Labs / Gemini 1.5 Pro        [UNDERSTANDING]│
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  💻 LOCAL            │  ❌  IMPOSSIBLE on GT 730 / i5-4430 / 16GB RAM         │
│  @ 8+ tok/s          │  ❌  Video LLMs need 24GB+ VRAM (LLaVA-Video, etc.)   │
│                      │  ❌  Local video gen: CogVideoX, LTX-Video need 12GB+  │
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  🔧 WORKAROUND       │  Use cloud APIs via OpenRouter / direct provider APIs  │
│                      │  Local: ffmpeg + whisper.cpp (audio) + frame extraction│
└──────────────────────┴─────────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────────────────────────────────┐
│  6️⃣  W R I T I N G   D O C U M E N T S   F R O M   I N F O   S E T S          │
├──────────────────────┬─────────────────────────────────────────────────────────┤
│  ☁ CLOUD             │  ◉  anthropic/claude-3.5-sonnet       [BEST STYLE]     │
│  primary             │  ◉  openai/gpt-4o                       [STRUCTURE]    │
│                      │  ◉  google/gemini-pro-1.5             [LONG CONTEXT]   │
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  💻 LOCAL @ 8+ tok/s │  ◉  qwen2.5-7b-instruct-q4_k_m.gguf           ~6 tok/s  │
│                      │  ◉  nemotron-3-ultra-8b-q4_k_m.gguf             ~5 tok/s │
│                      │  ◉  phi-3-medium-128k-instruct-q4_k_m.gguf      ~4 tok/s │
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  📦 GGUF SOURCES     │  HuggingFace: Qwen/Qwen2.5-7B-Instruct-GGUF              │
│                      │  HuggingFace: NVIDIA/Nemotron-3-Ultra-8B-GGUF            │
│                      │  HuggingFace: microsoft/Phi-3-medium-128k-instruct-GGUF  │
│  ⚙️  LLAMA.CPP CMD   │  llama-server -m qwen2.5-7b-instruct-q4_k_m.gguf         │
│                      │    -c 8192 -ngl 0 -t 4 --port 8083                       │
└──────────────────────┴─────────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────────────────────────────────┐
│  7️⃣  A U D I O  (transcription, understanding, generation)                    │
├──────────────────────┬─────────────────────────────────────────────────────────┤
│  ☁ CLOUD             │  ◉  openai/whisper-large-v3          [TRANSCRIPTION]   │
│  primary             │  ◉  google/gemini-pro-1.5              [AUDIO IN]      │
│                      │  ◉  elevenlabs / openai/tts            [TTS]           │
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  💻 LOCAL @ 8+ tok/s │  ◉  whisper.cpp (CPU)  —  NOT AN LLM, but FAST        │
│  (transcription)     │      base.en  →  ~50x realtime on i5-4430               │
│                      │      small.en →  ~25x realtime                          │
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  📦 LOCAL TOOLS      │  whisper.cpp (ggml)  •  faster-whisper (CPU)           │
│                      │  bark.cpp / kokoro.cpp (TTS, slow on CPU)              │
│  ⚙️  WHISPER.CPP CMD │  ./main -m models/ggml-base.en.bin -f audio.wav        │
│                      │    -otxt -t 4                                          │
└──────────────────────┴─────────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────────────────────────────────┐
│  8️⃣  U N C E N S O R E D                                                      │
├──────────────────────┬─────────────────────────────────────────────────────────┤
│  ☁ CLOUD             │  ◉  cognitivecomputations/dolphin-2.9-llama3-70b       │
│  primary (OpenRouter)│  ◉  cognitivecomputations/dolphin-2.9-qwen2-72b        │
│                      │  ◉  openrouter/auto (routes to least filtered)         │
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  💻 LOCAL @ 8+ tok/s │  ◉  dolphin-2.9-llama3-8b-q4_k_m.gguf         ~6 tok/s │
│                      │  ◉  dolphin-2.9-qwen2-7b-q4_k_m.gguf            ~7 tok/s │
│                      │  ◉  neural-chat-7b-v3-3-q4_k_m.gguf             ~6 tok/s │
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  📦 GGUF SOURCES     │  HuggingFace: cognitivecomputations/Dolphin-2.9-Llama3-8B-GGUF│
│                      │  HuggingFace: cognitivecomputations/Dolphin-2.9-Qwen2-7B-GGUF │
│                      │  HuggingFace: Neural-Chat/Neural-Chat-7B-v3-3-GGUF     │
│  ⚙️  LLAMA.CPP CMD   │  llama-server -m dolphin-2.9-qwen2-7b-q4_k_m.gguf       │
│                      │    -c 8192 -ngl 0 -t 4 --port 8084                      │
└──────────────────────┴─────────────────────────────────────────────────────────┘

══════════════════════════════════════════════════════════════════════════════════
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  B O N U S  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
══════════════════════════════════════════════════════════════════════════════════

┌────────────────────────────────────────────────────────────────────────────────┐
│  🎬  U N C E N S O R E D  +  [ V I D E O   C R E A T I O N  |  E D I T I N G ]  │
├──────────────────────┬─────────────────────────────────────────────────────────┤
│  ☁ CLOUD             │  ◉  RUNWAY Gen-3 Alpha / Gen-3 Turbo                   │
│  primary             │  ◉  Luma Dream Machine 1.5                              │
│                      │  ◉  Kling AI (Kuaishou)                                 │
│                      │  ◉  Minimax Video-01 / Hailuo AI                        │
│                      │  ◉  Pika Labs 1.5                                       │
│                      │  ◉  LTX-Video (open, via replicate/fal)                 │
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  💻 LOCAL            │  ❌  IMPOSSIBLE on current hardware                    │
│                      │  Minimum for local video gen:                           │
│                      │    • 12 GB VRAM (CogVideoX-5B, LTX-Video)               │
│                      │    • 24 GB VRAM (CogVideoX-5B-I2V, HunyuanVideo)       │
│                      │    • 48 GB VRAM (HunyuanVideo, LTX-Video 13B)          │
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  🔧 HYBRID WORKFLOW  │  1. Local LLM (uncensored) writes prompts/scripts      │
│  (RECOMMENDED)       │  2. Send to cloud video API via OpenRouter/fal/replicate│
│                      │  3. Local ffmpeg for post-processing, concatenation    │
│                      │  4. Local whisper.cpp for audio sync/subtitles         │
│  ────────────────────┼─────────────────────────────────────────────────────────│
│  💰 COST ESTIMATE    │  Runway Gen-3:  $0.05-0.10 / second                     │
│                      │  Luma Dream:    $0.32 / 5 sec (via API)                 │
│                      │  Kling:         ~$0.05-0.10 / second                    │
│                      │  LTX-Video:     ~$0.02 / second (replicate)            │
└──────────────────────┴─────────────────────────────────────────────────────────┘

══════════════════════════════════════════════════════════════════════════════════
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  Q U I C K  S T A R T  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
══════════════════════════════════════════════════════════════════════════════════

  ┌────────────────────────────────────────────────────────────────────────────┐
  │  INSTALL LLAMA.CPP (Windows)                                               │
  ├────────────────────────────────────────────────────────────────────────────┤
  │  git clone https://github.com/ggerganov/llama.cpp                          │
  │  cd llama.cpp && mkdir build && cd build                                   │
  │  cmake .. -DGGML_CUDA=OFF -DCMAKE_BUILD_TYPE=Release                       │
  │  cmake --build . --config Release -j4                                      │
  │  # Binaries in build/bin/Release/                                          │
  └────────────────────────────────────────────────────────────────────────────┘

  ┌────────────────────────────────────────────────────────────────────────────┐
  │  DOWNLOAD MODELS (pick 2-3 max for 16 GB RAM)                              │
  ├────────────────────────────────────────────────────────────────────────────┤
  │  # Coding (1.5B)          huggingface-cli download Qwen/Qwen2.5-Coder-1.5B-Instruct-GGUF qwen2.5-coder-1.5b-instruct-q4_k_m.gguf --local-dir models/  │
  │  # General (3B)           huggingface-cli download Qwen/Qwen2.5-3B-Instruct-GGUF qwen2.5-3b-instruct-q4_k_m.gguf --local-dir models/                  │
  │  # Uncensored (7B)        huggingface-cli download cognitivecomputations/Dolphin-2.9-Qwen2-7B-GGUF dolphin-2.9-qwen2-7b-q4_k_m.gguf --local-dir models/  │
  │  # Vision (1.8B)          huggingface-cli download lmstudio-community/moondream2-GGUF moondream2-1.8b-q4_k_m.gguf --local-dir models/                   │
  │  # Embeddings (33M)       huggingface-cli download Qwen/Qwen2.5-0.5B-Instruct-GGUF qwen2.5-0.5b-instruct-q4_k_m.gguf --local-dir models/               │
  └────────────────────────────────────────────────────────────────────────────┘

  ┌────────────────────────────────────────────────────────────────────────────┐
  │  RUN SERVERS (each in separate terminal)                                   │
  ├────────────────────────────────────────────────────────────────────────────┤
  │  # Port 8080: Coding        llama-server -m models/qwen2.5-coder-1.5b-q4_k_m.gguf -c 4096 -ngl 0 -t 4 --port 8080  │
  │  # Port 8081: General       llama-server -m models/qwen2.5-3b-instruct-q4_k_m.gguf -c 4096 -ngl 0 -t 4 --port 8081   │
  │  # Port 8082: Vision        llama-server -m models/moondream2-1.8b-q4_k_m.gguf -c 2048 -ngl 0 -t 4 --port 8082 --mmproj models/mmproj.bin  │
  │  # Port 8083: Uncensored    llama-server -m models/dolphin-2.9-qwen2-7b-q4_k_m.gguf -c 8192 -ngl 0 -t 4 --port 8083   │
  │  # Port 8084: Embeddings    llama-server -m models/qwen2.5-0.5b-instruct-q4_k_m.gguf -c 512 -ngl 0 -t 4 --port 8084 --embedding   │
  └────────────────────────────────────────────────────────────────────────────┘

  ┌────────────────────────────────────────────────────────────────────────────┐
  │  INTEGRATE WITH HERMES                                                     │
  ├────────────────────────────────────────────────────────────────────────────┤
  │  hermes config set model.aliases.local-coding        "http://localhost:8080/v1" provider:openai model:qwen2.5-coder-1.5b  │
  │  hermes config set model.aliases.local-general       "http://localhost:8081/v1" provider:openai model:qwen2.5-3b         │
  │  hermes config set model.aliases.local-vision        "http://localhost:8082/v1" provider:openai model:moondream2        │
  │  hermes config set model.aliases.local-uncensored    "http://localhost:8083/v1" provider:openai model:dolphin-2.9-qwen2  │
  │  hermes config set model.aliases.local-embeddings    "http://localhost:8084/v1" provider:openai model:qwen2.5-0.5b       │
  │                                                                           │
  │  # Then use in chat:                                                        │
  │  /model local-coding        # Switch to local coding model                  │
  │  /model local-uncensored    # Switch to uncensored model                    │
  └────────────────────────────────────────────────────────────────────────────┘

══════════════════════════════════════════════════════════════════════════════════
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  P E R F O R M A N C E  E S T I M A T E S  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
══════════════════════════════════════════════════════════════════════════════════

  ┌────────────────────┬──────────┬──────────┬──────────┬──────────┬────────────┐
  │  MODEL (Q4_K_M)    │  PARAMS  │  SIZE    │  CTX     │  TOK/S   │  USE CASE  │
  │                    │          │  (GB)    │  (MAX)   │  (i5-4430)│            │
  ├────────────────────┼──────────┼──────────┼──────────┼──────────┼────────────┤
  │  qwen2.5-0.5b      │  0.5 B   │  0.4     │  32k     │  40-60   │  Embedding │
  │  qwen2.5-1.5b      │  1.5 B   │  1.0     │  32k     │  20-30   │  Fast chat │
  │  qwen2.5-coder-1.5b│  1.5 B   │  1.0     │  32k     │  18-25   │  Coding    │
  │  phi-3-mini-4k     │  3.8 B   │  2.3     │  4k      │  10-14   │  General   │
  │  qwen2.5-3b        │  3 B     │  1.9     │  32k     │  12-16   │  General   │
  │  dolphin-2.9-qwen2-7b│ 7 B    │  4.1     │  8k      │  6-8     │  Uncensored│
  │  qwen2.5-7b        │  7 B     │  4.1     │  32k     │  5-7     │  Writing   │
  │  nemotron-3-ultra-8b│ 8 B     │  4.7     │  8k      │  4-6     │  Writing   │
  │  llava-v1.6-mistral-7b│ 7 B   │  4.5     │  4k      │  2-4     │  Vision    │
  │  moondream2-1.8b   │  1.8 B   │  1.2     │  2k      │  10-15   │  Vision    │
  └────────────────────┴──────────┴──────────┴──────────┴──────────┴────────────┘

  ▓▓▓  NOTE: "-ngl 0" = CPU only. GT 730 cannot accelerate. Add "-ngl 99" only if you
      get a modern GPU (RTX 3060 12GB+ recommended for 7B-8B models at 20+ tok/s).

══════════════════════════════════════════════════════════════════════════════════
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  A R C H I T E C T U R E  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
══════════════════════════════════════════════════════════════════════════════════

   ┌──────────────────────────────────────────────────────────────────────────┐
   │                        H E R M E S   A G E N T                            │
   │  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐      │
   │  │  Chat UI    │  │  Tool Loop  │  │  Memory     │  │  Skills     │      │
   │  │  (TUI/CLI)  │  │  (terminal, │  │  (Honcho,   │  │  (computer- │      │
   │  │             │  │  browser,   │  │  mem0,      │  │  use,       │      │
   │  │             │  │  file, etc) │  │  sqlite-vec)│  │  github,    │      │
   │  └──────┬──────┘  └──────┬──────┘  └──────┬──────┘  └──────┬──────┘      │
   └─────────┼────────────────┼────────────────┼────────────────┼──────────────┘
             │                │                │                │
             ▼                ▼                ▼                ▼
   ┌──────────────────────────────────────────────────────────────────────────┐
   │                     M O D E L   R O U T E R                               │
   │  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐  │
   │  │ OpenRouter   │  │ Local:8080   │  │ Local:8081   │  │ Local:8082   │  │
   │  │ (cloud)      │  │ (coding)     │  │ (general)    │  │ (vision)     │  │
   │  └──────────────┘  └──────────────┘  └──────────────┘  └──────────────┘  │
   │  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐  │
   │  │ Local:8083   │  │ Local:8084   │  │ Whisper.cpp  │  │ FFmpeg       │  │
   │  │ (uncensored) │  │ (embeddings) │  │ (audio)      │  │ (video proc) │  │
   │  └──────────────┘  └──────────────┘  └──────────────┘  └──────────────┘  │
   └──────────────────────────────────────────────────────────────────────────┘
             │                │                │                │
             ▼                ▼                ▼                ▼
   ┌──────────────────┐ ┌───────────┐ ┌──────────────┐ ┌──────────────────┐
   │  Cloud Models    │ │ CPU Only  │ │  CPU + RAM   │ │  CPU Only        │
   │  (unlimited)     │ │ llama.cpp │ │  (RAG, vec)  │ │  (transcription) │
   └──────────────────┘ └───────────┘ └──────────────┘ └──────────────────┘

══════════════════════════════════════════════════════════════════════════════════
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  D E C I S I O N  G U I D E  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
══════════════════════════════════════════════════════════════════════════════════

  ┌────────────────────────────────────────────────────────────────────────────┐
  │  IF TASK IS...                    │  USE THIS MODEL                        │
  ├────────────────────────────────────────────────────────────────────────────┤
  │  Quick code snippet / fix         │  local-coding (qwen2.5-coder-1.5b)    │
  │  Complex refactor / architecture  │  cloud: deepseek-coder-v2.5 / sonnet  │
  │  Shell script / automation        │  local-general (qwen2.5-3b)           │
  │  Research / fact lookup           │  cloud: gemini-pro-1.5 / sonar-pro    │
  │  Local RAG / document Q&A         │  local-general + local-embeddings     │
  │  Image description / OCR          │  local-vision (moondream2)            │
  │  Complex image reasoning          │  cloud: gpt-4o / claude-3.5-sonnet    │
  │  Video understanding              │  cloud: gemini-pro-1.5 (2M ctx)       │
  │  Video generation                 │  cloud: Runway / Luma / Kling / LTX   │
  │  Long-form writing / reports      │  cloud: claude-3.5-sonnet             │
  │  Draft writing (offline)          │  local-writing (qwen2.5-7b)           │
  │  Audio transcription              │  local: whisper.cpp (base.en)         │
  │  Uncensored / creative / roleplay │  local-uncensored (dolphin-2.9-qwen2) │
  │  Uncensored + video prompts       │  local-uncensored → cloud video API   │
  └────────────────────────────────────────────────────────────────────────────┘

══════════════════════════════════════════════════════════════════════════════════
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
  Generated: $(date)  │  Hardware: GT 730 2GB / i5-4430 / 16GB RAM  │  Hermes Agent
  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓