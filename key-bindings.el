(global-set-key (kbd "M-ù") 'query-replace)
(global-set-key (kbd "M-%") 'query-replace)
(global-set-key (kbd "s-SPC") 'mc/mark-next-like-this)
(global-set-key (kbd "C-s-SPC") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-l") 'mc/edit-lines)
(global-set-key (kbd "<zenkaku-hankaku>") 'toggle-input-method)
(global-set-key (kbd "<hiragana-katakana>") 'toggle-input-method)
(global-set-key (kbd "M-`") 'toggle-input-method)
(global-set-key (kbd "s-t") 'toggle-input-method)
(global-set-key (kbd "s-i") 'indent-region)
(global-set-key (kbd "s-f") 'forward-paragraph)
(global-set-key (kbd "s-b") 'backward-paragraph)
(global-set-key (kbd "s-,") 'beginning-of-buffer)
(global-set-key (kbd "s-<") 'end-of-buffer)
(global-set-key (kbd "s-.") 'end-of-buffer)
(global-set-key (kbd "s-=") 'enlarge-window-horizontally)
(global-set-key (kbd "s-+") 'enlarge-window)
(global-set-key (kbd "s-p") 'show-paren-mode)
(global-set-key (kbd "<C-return>") 'newline-and-indent)
(global-set-key (kbd "s-x") 'clipboard-kill-region)
(global-set-key (kbd "s-c") 'clipboard-kill-ring-save)
(global-set-key (kbd "s-v") 'x-clipboard-yank)
(global-set-key (kbd "C-z") 'toggle-window-split)
(global-set-key (kbd "s-r") 'replace-regexp)
(global-set-key (kbd "s-g") '(lambda () (interactive) (async-shell-command "comptex")))
(global-set-key (kbd "<C-muhenkan>") 'previous-buffer)
(global-set-key (kbd "<C-henkan>") 'next-buffer)
(global-set-key (kbd "<muhenkan>") 'windmove-left)
(global-set-key (kbd "<henkan>") 'windmove-right)
(global-set-key (kbd "<kp-subtract>") 'previous-buffer)
(global-set-key (kbd "<kp-add>") 'next-buffer)
(global-set-key (kbd "<C-kp-subtract>") 'windmove-left)
(global-set-key (kbd "<C-kp-add>") 'windmove-right)
(global-set-key (kbd "s-j") 'comment-region) 
(global-set-key (kbd "s-k") 'uncomment-region)
(global-set-key (kbd "s-;") 'comment-or-uncomment-region)
(global-set-key (kbd "s-u") 'undo)
(global-set-key (kbd "C-x C-u") 'upcase-word)
(global-set-key (kbd "C-x C-l") 'downcase-word)
(global-set-key (kbd "C-?") 'help-command)
(global-set-key (kbd "M-?") 'mark-paragraph)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)
(global-set-key (kbd "C-x C-o") 'find-file-in-project)
(global-set-key (kbd "C-c C-;") 'recompile)
(global-set-key (kbd "<f8>") 'ispell)
(global-set-key (kbd "<f9>") 'ispell-word)

(defun run-rake ()
  "Runs rake"
  (interactive)
  (save-window-excursion
    (when (get-buffer "async")
      (kill-buffer "async"))
    (shell-command "rake &"
     (generate-new-buffer "async"))))

(global-set-key (kbd "C-c r") 'run-rake)

(provide 'key-bindings)
