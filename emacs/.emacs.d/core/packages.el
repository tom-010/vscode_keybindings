;; -*- no-byte-compile: t; -*-
;;; core/packages.el

;; core.el
(package! auto-minor-mode :pin "17cfa1b54800fdef2975c0c0531dad34846a5065")
(package! gcmh :pin "0089f9c3a6d4e9a310d0791cf6fa8f35642ecfd9")
(package! explain-pause-mode
  :recipe (:host github
           :repo "lastquestion/explain-pause-mode")
  :pin "2356c8c3639cbeeb9751744dbe737267849b4b51")

;; core-packages.el
(package! straight
  :type 'core
  :recipe `(:host github
            :repo "raxod502/straight.el"
            :branch ,straight-repository-branch
            :local-repo "straight.el"
            :files ("straight*.el"))
  :pin "653b04a64f341bfa2606c8f2acba10c3fe284ca2")

;; core-modules.el
(package! use-package
  :type 'core
  :pin "a7422fb8ab1baee19adb2717b5b47b9c3812a84c")

;; core-ui.el
(package! all-the-icons :pin "2c963ebb75f211d2f7ac3d2db5f4a9ee2f3e27da")
(package! hide-mode-line :pin "bc5d293576c5e08c29e694078b96a5ed85631942")
(package! highlight-numbers :pin "8b4744c7f46c72b1d3d599d4fb75ef8183dee307")
(package! rainbow-delimiters :pin "a32b39bdfe6c61c322c37226d66e1b6d4f107ed0")
(package! restart-emacs :pin "1607da2bc657fe05ae01f7fdf26f716eafead02c")

;; core-editor.el
(package! better-jumper :pin "47622213783ece37d5337dc28d33b530540fc319")
(package! dtrt-indent :pin "926fc4260c3f71f5aac2e0becb9ee435a4124d5d")
(package! helpful :pin "67cdd1030b3022d3dc4da2297f55349da57cde01")
(package! pcre2el :pin "0b5b2a2c173aab3fd14aac6cf5e90ad3bf58fa7d")
(package! smartparens :pin "37f77bf2e2199be9fe27e981317b02cfd0e8c70e")
(package! ws-butler
  ;; Use my fork of ws-butler, which has a few choice improvements and
  ;; optimizations (the original has been abandoned).
  :recipe (:host github :repo "hlissner/ws-butler")
  :pin "572a10c11b6cb88293de48acbb59a059d36f9ba5")

;; core-projects.el
(package! projectile :pin "0243ad7dc96072126fc6c23e48184a0419bab028")
(package! project :pin "125a1a8d15f998cd495ef6a6b981b1a0e201bd2f")

;; core-keybinds.el
(package! general :pin "9651024e7f40a8ac5c3f31f8675d3ebe2b667344")
(package! which-key :pin "1217db8c6356659e67b35dedd9f5f260c06f6e99")
