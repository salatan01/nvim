local map = vim.keymap.set

-- ============================================================================
-- 1. THE VOID (Deletions & Changes)
-- Everything here goes to the "_ (Black Hole) register.
-- Your system clipboard remains 100% untouched.
-- ============================================================================

-- Deletions
map({ "n", "v" }, "d", '"_d', { noremap = true, desc = "Delete motion (Void)" })
map({ "n", "v" }, "dd", '"_dd', { noremap = true, desc = "Delete line (Void)" })
map({ "n", "v" }, "D", '"_D', { noremap = true, desc = "Delete to EOL (Void)" })

-- Changes (This kills the `ciw` frustration)
map({ "n", "v" }, "c", '"_c', { noremap = true, desc = "Change motion (Void)" })
map({ "n", "v" }, "C", '"_C', { noremap = true, desc = "Change to EOL (Void)" })

-- Single Character Deletions
map({ "n", "v" }, "x", '"_x', { noremap = true, desc = "Delete char forward (Void)" })
map({ "n", "v" }, "X", '"_X', { noremap = true, desc = "Delete char backward (Void)" })

-- ============================================================================
-- 2. THE SAFE PASTE
-- When you highlight text and paste over it, Neovim usually yanks the
-- text you just replaced. This stops that theft.
-- ============================================================================
map("v", "p", '"_dP', { noremap = true, desc = "Paste over without stealing yank" })

-- ============================================================================
-- 3. THE INTENTIONAL ACTIONS (The Escape Hatches)
-- Use <leader> when you actually WANT to cut text to move it elsewhere.
-- ============================================================================

-- Explicit Cut to system clipboard
map({ "n", "v" }, "<leader>d", '"+d', { noremap = true, desc = "Cut motion to Clipboard" })
map({ "n", "v" }, "<leader>dd", '"+dd', { noremap = true, desc = "Cut line to Clipboard" })
map({ "n", "v" }, "<leader>D", '"+D', { noremap = true, desc = "Cut EOL to Clipboard" })

-- Explicit Yank to system clipboard (Standard 'y' usually works, but this is safe)
map({ "n", "v" }, "<leader>y", '"+y', { noremap = true, desc = "Yank motion to Clipboard" })
map({ "n", "v" }, "<leader>Y", '"+Y', { noremap = true, desc = "Yank line to Clipboard" })
