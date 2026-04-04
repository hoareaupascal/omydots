
# 🎨 omydots  
![Alacritty](https://img.shields.io/badge/Alacritty-2496ED?style=for-the-badge&logo=alacritty&logoColor=white)
> A minimalist, lightning-fast theme switcher and configurator for the modern terminal.

<p align="center">
  <img src="img/omydots.png" alt="omydots preview">
</p>

**omydots** is a lightweight theme manager designed for users who love to switch vibes instantly. Instead of manually editing config files, `omydots` uses a "pointer" system to swap themes across multiple applications simultaneously using a beautiful `fzf` interface.

---

## ✨ Supported Applications
Currently, **omydots** synchronizes the following:
* 🚀 **Alacritty** (Terminal Emulator)
* 📟 **Btop** (System Monitor)
* 🌑 **Neovim** (Text Editor)
* *(More coming soon!)*

---

## 🛠️ Installation

### 1. Prerequisites
Ensure you have the following installed:
* `fzf` (The fuzzy finder)
* `git`

### 2. Clone and Install
Clone the repository and run the install script. 
> **Note:** The installer will automatically back up your existing `alacritty.toml` to `alacritty.toml.bak`.

```bash
git clone [https://github.com/hoareaupascal/omydots.git](https://github.com/hoareaupascal/omydots.git)
cd omydots
./install.sh
