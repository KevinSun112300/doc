(require 'ox-publish)
(setq org-publish-project-alist
      '(
        ;; org note
        ("org-notes"
         :base-directory "~/github/doc/"
         :base-extension "org"
         :publishing-directory "~/github/githubio"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4             ; Just the default for this project.
         :auto-preamble t

         )


        ("org-static"
         :base-directory "~/github/doc/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/github/githubio"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("org" :components ("org-notes" "org-static"))
        ))
