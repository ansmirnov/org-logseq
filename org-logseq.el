(defun open-logseq (&optional arg)
  (interactive "P")
  (org-open-file (shell-command-to-string (
				   concat "bash ~/bin/opennote.sh " (org-element-property :path (org-element-context)))))
  )
