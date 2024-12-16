# refresh packages ======================
remotes::install_github("brandonerose/Rosyverse")
remotes::install_github("brandonerose/RosyDev")
#install.packages("devtools")
#install.packages("usethis")
#install.packages("pkgdown")
Rosyverse::update_all()
.rs.restartR()
# Create =======================================================================
bookdown::create_bs4_book(path=getwd())
#bookdown::create_gitbook(path)
usethis::use_git()
usethis::use_github()
# Render ==============================================
bookdown::render_book("index.Rmd", "bookdown::bs4_book",output_dir = "docs")
bookdown::render_book("index.Rmd", "bookdown::epub_book",output_dir = "docs")
bookdown::render_book("index.Rmd", "bookdown::pdf_book", output_dir = "docs")
# Serve locally ================================================================
# ?bookdown::serve_book()
bookdown::serve_book(port = 8787, in_session = T,preview = T,output_dir = "docs")
utils::browseURL("http://127.0.0.1:8787")
# Commit =======================================================================
RosyDev::fast_commit()
# Push =========================================================================
usethis:::git_push()
# scrap ========================================================================
utils::browseURL("https://brandonerose.github.io/Data-Pipelines/")

