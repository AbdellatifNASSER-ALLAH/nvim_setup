# 🧠 Neovim Setup

A clean and minimal Neovim configuration optimized for simplicity and speed.

---

## 🚀 How to Set It Up

Follow the steps below to install this Neovim configuration **safely**, with a **backup of any existing setup**.

---

### 📦 1. Clone the Repository

Clone this configuration repository into your working directory:

```bash
git clone https://github.com/AbdellatifNASSER-ALLAH/nvim_setup.git
```

---

### 🛡️ 2. Backup Existing Neovim Configuration

If you already have a Neovim setup, **back it up before overwriting**:
- Create a timestamp variable
````
timestamp=$(date +%Y%m%d_%H%M%S)
````
- Create the backup directory
````
mkdir -p ~/.config/nvim_backups
````
- Copy existing config to the backup directory
````
cp -r ~/.config/nvim ~/.config/nvim_backups/nvim_backup_$timestamp 2>/dev/null
````

> 🔒 Your old configuration will be saved in: `~/.config/nvim_backups/nvim_backup_<timestamp>`

---

### 🛠️ 3. Create Neovim Config Directory

Ensure the target config directory exists:

```bash
mkdir -p ~/.config/nvim
```

---

### 📁 4. Copy the New Configuration Files

Copy the new configuration files from the cloned repo:

```bash
cp -r nvim_setup/* ~/.config/nvim/
```

---

### ✅ 5. Launch Neovim

Start Neovim to activate the new configuration:

```bash
nvim
```

Neovim will automatically install the plugins on the first launch if your config uses a plugin manager.

---

## 🔄 Optional: Restore a Previous Config

If you want to restore a previous config backup:

```bash
# Replace <timestamp> with the backup you want to restore
cp -r ~/.config/nvim_backups/nvim_backup_<timestamp> ~/.config/nvim
```

---

                                    Thank you !

---
