;;
;; Select folder then combine all DMGs into current open files
;;

(defun C:combinedwgs()
(vl-load-com)
(setq x 0)
(setq dirpath (acet-ui-pickdir "Select Folder to Process... "))
(foreach path (vl-directory-files dirpath "/*.dwg")
(command "-insert" (strcat dirpath "/" path) (list x 0.0 0.0) "" "" "")
)
)